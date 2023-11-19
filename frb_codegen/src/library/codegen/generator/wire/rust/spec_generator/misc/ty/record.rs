use crate::codegen::generator::wire::rust::spec_generator::base::*;
use crate::codegen::generator::wire::rust::spec_generator::misc::ty::WireRustGeneratorMiscTrait;

impl<'a> WireRustGeneratorMiscTrait for RecordWireRustGenerator<'a> {
    // TODO https://github.com/fzyzcjy/yplusplus/issues/11145#issuecomment-1816273032
    // fn wrapper_struct_name(&self) -> Option<String> {
    //     self.as_struct_generator().wrapper_struct_name()
    // }

    // TODO old code has this, but I think do not need?
    // fn generate_static_checks(&self) -> Option<String> {
    //     self.as_struct_generator().static_checks()
    // }
}

impl RecordWireRustGenerator<'_> {
    pub(crate) fn as_struct_generator(&self) -> StructRefWireRustGenerator {
        StructRefWireRustGenerator {
            ir: self.ir.inner.clone(),
            context: self.context,
        }
    }
}
