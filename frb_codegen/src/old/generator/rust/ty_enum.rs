use itertools::Itertools;

use crate::generator::rust::generate_impl_into_into_dart;
use crate::generator::rust::ty::*;
use crate::generator::rust::ExternFuncCollector;
use crate::generator::rust::NO_PARAMS;
use crate::ir::*;
use crate::target::Acc;
use crate::target::Target::*;
use crate::type_rust_generator_struct;

type_rust_generator_struct!(TypeEnumRefGenerator, IrTypeEnumRef);

impl TypeRustGeneratorTrait for TypeEnumRefGenerator<'_> {}
