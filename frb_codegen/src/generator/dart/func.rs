use super::*;

#[derive(Debug)]
pub(crate) struct GeneratedApiMethod {
    pub comments: String,
    pub signature: String,
    pub implementation: String,
}

pub(crate) fn generate_api_func(
    func: &IrFunc,
    ir_file: &IrFile,
    common_api2wire_body: &str,
    shared_dart_api2wire_funcs: &Option<Acc<String>>,
) -> GeneratedApiFunc {
    let raw_func_param_list = func
        .inputs
        .iter()
        .map(|input| {
            format!(
                "{required}{} {} {default}",
                input.ty.dart_api_type(),
                input.name.dart_style(),
                required = input.required_modifier(),
                default = input.field_default(false, None),
            )
        })
        .collect::<Vec<_>>();
    let full_func_param_list = [raw_func_param_list, vec!["dynamic hint".to_owned()]].concat();

    let prepare_args = func
        .inputs
        .iter()
        .enumerate()
        .map(|(index, input)| {
            // edge case: ffigen performs its own bool-to-int conversions
            if let Primitive(IrTypePrimitive::Bool) = input.ty {
                format!("var arg{index} = {};", input.name.dart_style())
            } else {
                let func = format!("api2wire_{}", input.ty.safe_ident());
                //
                let prefix = match shared_dart_api2wire_funcs {
                    Some(shared_dart_api2wire_funcs) => {
                        log::debug!("the func to check:{func}"); //TODO: delete
                        log::debug!("shared_dart_api2wire_funcs:{shared_dart_api2wire_funcs:?}"); //TODO: delete

                        let shared_common_api2wire_body = &shared_dart_api2wire_funcs.common;
                        match !ir_file.is_type_shared_by_safe_ident(&input.ty) {
                            true => {
                                let ident = input.ty.safe_ident();
                                log::debug!("type {:?} is NOT shared, ident is:{ident}", input.ty); //TODO: delete
                                if common_api2wire_body.contains(&func) {
                                    ""
                                } else {
                                    "_platform."
                                }
                            }
                            false => {
                                if shared_common_api2wire_body.contains(&func) {
                                    ""
                                } else {
                                    "_sharedPlatform."
                                }
                            }
                        }
                    }
                    _ => {
                        if common_api2wire_body.contains(&func) {
                            ""
                        } else {
                            "_platform."
                        }
                    }
                };

                format!(
                    "var arg{index} = {prefix}{func}({});",
                    &input.name.dart_style()
                )
            }
        })
        .collect::<Vec<_>>();

    let wire_param_list = [
        if func.mode.has_port_argument() {
            vec!["port_".to_owned()]
        } else {
            vec![]
        },
        (0..prepare_args.len())
            .map(|index| format!("arg{index}"))
            .collect_vec(),
    ]
    .concat();

    let func_expr = format!(
        "{} {}({{ {} }})",
        func.mode.dart_return_type(&func.output.dart_api_type()),
        func.name.to_case(Case::Camel),
        full_func_param_list.join(","),
    );

    let execute_func_name = match func.mode {
        IrFuncMode::Normal => "_platform.executeNormal",
        IrFuncMode::Sync => "_platform.executeSync",
        IrFuncMode::Stream { .. } => "_platform.executeStream",
    };

    let const_meta_field_name = format!("k{}ConstMeta", func.name.to_case(Case::Pascal));

    let signature = format!("{func_expr};");

    let comments = dart_comments(&func.comments);

    let task_common_args = format!(
        "
        constMeta: {},
        argValues: [{}],
        hint: hint,
        ",
        const_meta_field_name,
        func.inputs
            .iter()
            .map(|input| input.name.dart_style())
            .collect::<Vec<_>>()
            .join(", "),
    );

    let input_0 = func.inputs.get(0).as_ref().map(|x| &x.ty);
    let input_0_struct_name = if let Some(StructRef(IrTypeStructRef { name, .. })) = &input_0 {
        Some(name)
    } else {
        None
    };
    let f = FunctionName::deserialize(&func.name);
    let func_output_struct_name = if let StructRef(IrTypeStructRef { name, .. }) = &func.output {
        Some(name)
    } else {
        None
    };
    let mut parse_success_data = if (f.is_static_method()
        && f.struct_name().unwrap() == {
            if let IrType::StructRef(IrTypeStructRef { name, .. }) = &func.output {
                name.clone()
            } else {
                String::new()
            }
        })
        // If struct has a method with first element `input0`
        || (input_0_struct_name.is_some() && MethodNamingUtil::has_methods(input_0_struct_name.unwrap(), ir_file))
        //If output is a struct with methods
        || (func_output_struct_name.is_some()
            && MethodNamingUtil::has_methods(func_output_struct_name.unwrap(), ir_file))
    {
        format!("(d) => _wire2api_{}(d)", func.output.safe_ident())
    } else {
        format!("_wire2api_{}", func.output.safe_ident())
    };
    if !ir_file.shared && ir_file.is_type_shared_by_safe_ident(&func.output) {
        parse_success_data = parse_success_data.replace("_wire2api_", "_sharedImpl.wire2api_");
    }

    let is_sync = matches!(func.mode, IrFuncMode::Sync);
    let implementation = format!(
        "{} {{
            {}
            return {}({task}(
            callFfi: ({args}) => _platform.inner.{}({}),
            parseSuccessData: {},
            {}
        ));}}",
        func_expr,
        prepare_args.join("\n"),
        execute_func_name,
        func.wire_func_name(),
        wire_param_list.join(", "),
        parse_success_data,
        task_common_args,
        task = if is_sync {
            "FlutterRustBridgeSyncTask"
        } else {
            "FlutterRustBridgeTask"
        },
        args = if is_sync { "" } else { "port_" },
    );

    let companion_field_signature =
        format!("FlutterRustBridgeTaskConstMeta get {const_meta_field_name};");

    let companion_field_implementation = format!(
        "
        FlutterRustBridgeTaskConstMeta get {const_meta_field_name} => const FlutterRustBridgeTaskConstMeta(
            debugName: \"{}\",
            argNames: [{}],
        );
        ",
        func.name,
        func.inputs
            .iter()
            .map(|input| format!("\"{}\"", input.name.dart_style()))
            .collect::<Vec<_>>()
            .join(", "),
    );

    GeneratedApiFunc {
        signature,
        implementation,
        comments,
        companion_field_signature,
        companion_field_implementation,
    }
}

pub(crate) fn generate_opaque_getters(ty: &IrType) -> GeneratedApiFunc {
    let signature = format!(
        "
    DropFnType get dropOpaque{0};
    ShareFnType get shareOpaque{0};
    OpaqueTypeFinalizer get {0}Finalizer;
    ",
        ty.dart_api_type(),
    );

    let implementation = format!(
        "
        DropFnType get dropOpaque{0} => _platform.inner.drop_opaque_{0};
        ShareFnType get shareOpaque{0} => _platform.inner.share_opaque_{0};
        OpaqueTypeFinalizer get {0}Finalizer => _platform.{0}Finalizer;
        ",
        ty.dart_api_type()
    );

    GeneratedApiFunc {
        signature,
        implementation,
        comments: String::new(),
        companion_field_signature: String::new(),
        companion_field_implementation: String::new(),
    }
}
