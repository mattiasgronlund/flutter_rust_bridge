mod generalized_isolate;
pub(crate) mod handler;
mod misc;
mod platform_types;
mod rust2dart;
pub(crate) mod third_party;
pub(crate) mod thread_pool;

pub(crate) mod dart_opaque;
pub(crate) mod ffi_binding;
pub mod for_generated;
pub(crate) mod rust_async;
pub(crate) mod web_transfer;

pub use crate::dart_opaque::DartOpaque;
pub use crate::generalized_isolate::{IntoDart, ZeroCopyBuffer};
pub use crate::handler::handler::Handler;
pub use crate::handler::implementation::handler::DefaultHandler;
pub use crate::misc::dart_dynamic::DartDynamic;
pub use crate::misc::into_into_dart::IntoIntoDart;
pub use crate::misc::rust_opaque::DartSafe;
pub use crate::misc::rust_opaque::RustOpaque;
pub use crate::rust2dart::stream_sink::StreamSink;
pub use flutter_rust_bridge_macros::frb;
