use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::api_dart::spec_generator::base::ApiDartGenerator;
use crate::codegen::generator::codec::sse::lang::Lang::DartLang;
use crate::codegen::generator::codec::sse::ty::{CodecSseTy, CodecSseTyContext, EncodeOrDecode};
use crate::codegen::generator::codec::structs::BaseCodecEntrypointTrait;
use crate::codegen::generator::wire::dart::spec_generator::base::WireDartGeneratorContext;
use crate::codegen::generator::wire::dart::spec_generator::codec::base::{
    WireDartCodecEntrypointTrait, WireDartCodecOutputSpec,
};
use crate::codegen::generator::wire::dart::spec_generator::codec::sse::base::WireDartCodecSseGeneratorContext;
use crate::codegen::generator::wire::dart::spec_generator::codec::sse::body::generate_encode_or_decode;
use crate::codegen::generator::wire::dart::spec_generator::output_code::WireDartOutputCode;
use crate::codegen::ir::func::IrFunc;
use crate::codegen::ir::ty::IrType;

pub(crate) struct SseWireDartCodecEntrypoint {}

impl BaseCodecEntrypointTrait<WireDartGeneratorContext<'_>, WireDartCodecOutputSpec>
    for SseWireDartCodecEntrypoint
{
    fn generate_encode(
        &self,
        context: WireDartGeneratorContext,
        types: &[IrType],
    ) -> Option<WireDartCodecOutputSpec> {
        Some(generate_encode_or_decode(
            context.as_wire_dart_codec_sse_context(),
            types,
            EncodeOrDecode::Encode,
        ))
    }

    fn generate_decode(
        &self,
        context: WireDartGeneratorContext,
        types: &[IrType],
    ) -> Option<WireDartCodecOutputSpec> {
        Some(generate_encode_or_decode(
            context.as_wire_dart_codec_sse_context(),
            types,
            EncodeOrDecode::Decode,
        ))
    }
}

impl WireDartCodecEntrypointTrait<'_> for SseWireDartCodecEntrypoint {
    fn generate_dart2rust_func_stmt_prepare_args(&self, func: &IrFunc) -> Vec<String> {
        todo!()
    }

    fn generate_dart2rust_func_wire_param_list(
        &self,
        func: &IrFunc,
        num_prepare_args: usize,
    ) -> Vec<String> {
        todo!()
    }

    fn generate_rust2dart_codec_object(&self, func: &IrFunc) -> String {
        todo!()
    }
}
