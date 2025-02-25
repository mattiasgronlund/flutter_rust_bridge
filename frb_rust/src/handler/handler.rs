use crate::codec::sse::Dart2RustMessageSse;
use crate::codec::BaseCodec;
use crate::codec::Rust2DartMessageTrait;
use crate::dart_fn::DartFnFuture;
use crate::platform_types::DartAbi;
use crate::platform_types::MessagePort;
use crate::rust2dart::context::TaskRust2DartContext;
use crate::DartOpaque;
use std::future::Future;
use std::panic::UnwindSafe;

/// Provide your own handler to customize how to execute your function calls, etc.
///
/// This API is not guaranteed to be stable following semver (since things are going to be
/// added, and for every addition/change, it is a breaking change for this trait).
pub trait Handler {
    /// Prepares the arguments, executes a Rust function and sets up its return value.
    ///
    /// Why separate `PrepareFn` and `TaskFn`: because some things cannot be [`Send`] (e.g. raw
    /// pointers), so those can be done in `PrepareFn`, while the real work is done in `TaskFn` with [`Send`].
    ///
    /// The generated code depends on the fact that `PrepareFn` is synchronous to maintain
    /// correctness, therefore implementors of [`Handler`] must also uphold this property.
    ///
    /// If a Rust function is marked `sync`, it must be called with
    /// [`wrap_sync`](Handler::wrap_sync) instead.
    fn wrap_normal<Rust2DartCodec, PrepareFn, TaskFn>(
        &self,
        task_info: TaskInfo,
        prepare: PrepareFn,
    ) where
        PrepareFn: FnOnce() -> TaskFn + UnwindSafe,
        TaskFn: FnOnce(
                TaskContext<Rust2DartCodec>,
            ) -> Result<Rust2DartCodec::Message, Rust2DartCodec::Message>
            + Send
            + UnwindSafe
            + 'static,
        Rust2DartCodec: BaseCodec;

    /// Same as [`wrap`][Handler::wrap], but the Rust function will be called synchronously and
    /// need not implement [Send].
    fn wrap_sync<Rust2DartCodec, SyncTaskFn>(
        &self,
        task_info: TaskInfo,
        sync_task: SyncTaskFn,
    ) -> <Rust2DartCodec::Message as Rust2DartMessageTrait>::WireSyncRust2DartType
    where
        SyncTaskFn:
            FnOnce() -> Result<Rust2DartCodec::Message, Rust2DartCodec::Message> + UnwindSafe,
        Rust2DartCodec: BaseCodec;

    /// Same as [`wrap`][Handler::wrap], but for async Rust.
    #[cfg(feature = "rust-async")]
    fn wrap_async<Rust2DartCodec, PrepareFn, TaskFn, TaskRetFut>(
        &self,
        task_info: TaskInfo,
        prepare: PrepareFn,
    ) where
        PrepareFn: FnOnce() -> TaskFn + UnwindSafe,
        TaskFn: FnOnce(TaskContext<Rust2DartCodec>) -> TaskRetFut + Send + UnwindSafe + 'static,
        TaskRetFut: Future<Output = Result<Rust2DartCodec::Message, Rust2DartCodec::Message>>
            + TaskRetFutTrait
            + UnwindSafe,
        Rust2DartCodec: BaseCodec;

    fn dart_fn_invoke(
        &self,
        dart_fn: DartOpaque,
        args: Vec<DartAbi>,
    ) -> DartFnFuture<Dart2RustMessageSse>;

    fn dart_fn_handle_output(&self, call_id: i32, message: Dart2RustMessageSse);
}

/// Supporting information for a task
#[derive(Clone)]
pub struct TaskInfo {
    /// A Dart `SendPort`. [None] if the mode is [FfiCallMode::Sync].
    pub port: Option<MessagePort>,
    /// Usually the name of the function.
    pub debug_name: &'static str,
    /// The call mode of this function.
    pub mode: FfiCallMode,
}

/// The types of return values for a particular Rust function.
#[derive(Copy, Clone)]
pub enum FfiCallMode {
    /// The default mode, returns a Dart `Future<T>`.
    Normal,
    /// Used by `SyncReturn<T>` to skip spawning workers.
    Sync,
    /// Returns a Dart `Stream<T>`.
    Stream,
}

#[cfg(not(wasm))]
pub trait TaskRetFutTrait: Send {}
#[cfg(not(wasm))]
impl<T: Send> TaskRetFutTrait for T {}

#[cfg(wasm)]
pub trait TaskRetFutTrait {}
#[cfg(wasm)]
impl<T> TaskRetFutTrait for T {}

/// A context for task execution
pub struct TaskContext<Rust2DartCodec: BaseCodec> {
    rust2dart_context: TaskRust2DartContext<Rust2DartCodec>,
}

impl<Rust2DartCodec: BaseCodec> TaskContext<Rust2DartCodec> {
    pub fn new(rust2dart_context: TaskRust2DartContext<Rust2DartCodec>) -> Self {
        Self { rust2dart_context }
    }

    pub fn rust2dart_context(&self) -> &TaskRust2DartContext<Rust2DartCodec> {
        &self.rust2dart_context
    }
}
