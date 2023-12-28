// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.5.

// Section: imports

use super::*;
use crate::api::polars::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: dart2rust

impl CstDecode<anyhow::Error> for *mut wire_cst_list_prim_u_8 {
    fn cst_decode(self) -> anyhow::Error {
        unimplemented!()
    }
}
impl CstDecode<flutter_rust_bridge::RustOpaque<std::sync::RwLock<DataFrame>>>
    for *const std::ffi::c_void
{
    fn cst_decode(self) -> flutter_rust_bridge::RustOpaque<std::sync::RwLock<DataFrame>> {
        unsafe { flutter_rust_bridge::for_generated::cst_decode_rust_opaque(self) }
    }
}
impl CstDecode<flutter_rust_bridge::RustOpaque<std::sync::RwLock<Expr>>>
    for *const std::ffi::c_void
{
    fn cst_decode(self) -> flutter_rust_bridge::RustOpaque<std::sync::RwLock<Expr>> {
        unsafe { flutter_rust_bridge::for_generated::cst_decode_rust_opaque(self) }
    }
}
impl CstDecode<flutter_rust_bridge::RustOpaque<std::sync::RwLock<LazyFrame>>>
    for *const std::ffi::c_void
{
    fn cst_decode(self) -> flutter_rust_bridge::RustOpaque<std::sync::RwLock<LazyFrame>> {
        unsafe { flutter_rust_bridge::for_generated::cst_decode_rust_opaque(self) }
    }
}
impl CstDecode<flutter_rust_bridge::RustOpaque<std::sync::RwLock<LazyGroupBy>>>
    for *const std::ffi::c_void
{
    fn cst_decode(self) -> flutter_rust_bridge::RustOpaque<std::sync::RwLock<LazyGroupBy>> {
        unsafe { flutter_rust_bridge::for_generated::cst_decode_rust_opaque(self) }
    }
}
impl CstDecode<String> for *mut wire_cst_list_prim_u_8 {
    fn cst_decode(self) -> String {
        let vec: Vec<u8> = self.cst_decode();
        String::from_utf8(vec).unwrap()
    }
}
impl CstDecode<crate::api::mandelbrot::Point> for *mut wire_cst_point {
    fn cst_decode(self) -> crate::api::mandelbrot::Point {
        let wrap = unsafe { flutter_rust_bridge::for_generated::box_from_leak_ptr(self) };
        CstDecode::<crate::api::mandelbrot::Point>::cst_decode(*wrap).into()
    }
}
impl CstDecode<crate::api::mandelbrot::Size> for *mut wire_cst_size {
    fn cst_decode(self) -> crate::api::mandelbrot::Size {
        let wrap = unsafe { flutter_rust_bridge::for_generated::box_from_leak_ptr(self) };
        CstDecode::<crate::api::mandelbrot::Size>::cst_decode(*wrap).into()
    }
}
impl CstDecode<Vec<String>> for *mut wire_cst_list_String {
    fn cst_decode(self) -> Vec<String> {
        let vec = unsafe {
            let wrap = flutter_rust_bridge::for_generated::box_from_leak_ptr(self);
            flutter_rust_bridge::for_generated::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(CstDecode::cst_decode).collect()
    }
}
impl CstDecode<Vec<u8>> for *mut wire_cst_list_prim_u_8 {
    fn cst_decode(self) -> Vec<u8> {
        unsafe {
            let wrap = flutter_rust_bridge::for_generated::box_from_leak_ptr(self);
            flutter_rust_bridge::for_generated::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}
impl CstDecode<crate::api::mandelbrot::Point> for wire_cst_point {
    fn cst_decode(self) -> crate::api::mandelbrot::Point {
        crate::api::mandelbrot::Point {
            x: self.x.cst_decode(),
            y: self.y.cst_decode(),
        }
    }
}
impl CstDecode<crate::api::mandelbrot::Size> for wire_cst_size {
    fn cst_decode(self) -> crate::api::mandelbrot::Size {
        crate::api::mandelbrot::Size {
            width: self.width.cst_decode(),
            height: self.height.cst_decode(),
        }
    }
}
pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}
impl NewWithNullPtr for wire_cst_point {
    fn new_with_null_ptr() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
        }
    }
}
impl Default for wire_cst_point {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}
impl NewWithNullPtr for wire_cst_size {
    fn new_with_null_ptr() -> Self {
        Self {
            width: Default::default(),
            height: Default::default(),
        }
    }
}
impl Default for wire_cst_size {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

#[no_mangle]
pub extern "C" fn dart_fn_deliver_output(
    call_id: i32,
    ptr_: *mut u8,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    let message = unsafe {
        flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
            ptr_,
            rust_vec_len_,
            data_len_,
        )
    };
    FLUTTER_RUST_BRIDGE_HANDLER.dart_fn_handle_output(call_id, message)
}

#[no_mangle]
pub extern "C" fn wire_draw_mandelbrot(
    port_: i64,
    image_size: *mut wire_cst_size,
    zoom_point: *mut wire_cst_point,
    scale: f64,
    num_threads: i32,
) {
    wire_draw_mandelbrot_impl(port_, image_size, zoom_point, scale, num_threads)
}

#[no_mangle]
pub extern "C" fn wire_DataFrame_get_column(
    port_: i64,
    that: *const std::ffi::c_void,
    name: *mut wire_cst_list_prim_u_8,
) {
    wire_DataFrame_get_column_impl(port_, that, name)
}

#[no_mangle]
pub extern "C" fn wire_DataFrame_get_column_names(
    that: *const std::ffi::c_void,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_DataFrame_get_column_names_impl(that)
}

#[no_mangle]
pub extern "C" fn wire_DataFrame_lazy(
    that: *const std::ffi::c_void,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_DataFrame_lazy_impl(that)
}

#[no_mangle]
pub extern "C" fn wire_Expr_gt(
    that: *const std::ffi::c_void,
    other: *const std::ffi::c_void,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_Expr_gt_impl(that, other)
}

#[no_mangle]
pub extern "C" fn wire_Expr_sum(
    that: *const std::ffi::c_void,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_Expr_sum_impl(that)
}

#[no_mangle]
pub extern "C" fn wire_LazyFrame_collect(port_: i64, that: *const std::ffi::c_void) {
    wire_LazyFrame_collect_impl(port_, that)
}

#[no_mangle]
pub extern "C" fn wire_LazyFrame_filter(
    that: *const std::ffi::c_void,
    predicate: *const std::ffi::c_void,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_LazyFrame_filter_impl(that, predicate)
}

#[no_mangle]
pub extern "C" fn wire_LazyFrame_group_by(
    that: *const std::ffi::c_void,
    expr: *const std::ffi::c_void,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_LazyFrame_group_by_impl(that, expr)
}

#[no_mangle]
pub extern "C" fn wire_LazyGroupBy_agg(
    that: *const std::ffi::c_void,
    expr: *const std::ffi::c_void,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_LazyGroupBy_agg_impl(that, expr)
}

#[no_mangle]
pub extern "C" fn wire_col(
    name: *mut wire_cst_list_prim_u_8,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_col_impl(name)
}

#[no_mangle]
pub extern "C" fn wire_lit(t: f64) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_lit_impl(t)
}

#[no_mangle]
pub extern "C" fn wire_read_sample_dataset(port_: i64) {
    wire_read_sample_dataset_impl(port_)
}

#[no_mangle]
pub extern "C" fn rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockDataFrame(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_increment_strong_count::<
            std::sync::RwLock<DataFrame>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockDataFrame(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_decrement_strong_count::<
            std::sync::RwLock<DataFrame>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockExpr(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_increment_strong_count::<
            std::sync::RwLock<Expr>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockExpr(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_decrement_strong_count::<
            std::sync::RwLock<Expr>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockLazyFrame(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_increment_strong_count::<
            std::sync::RwLock<LazyFrame>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockLazyFrame(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_decrement_strong_count::<
            std::sync::RwLock<LazyFrame>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockLazyGroupBy(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_increment_strong_count::<
            std::sync::RwLock<LazyGroupBy>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockLazyGroupBy(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        flutter_rust_bridge::for_generated::rust_arc_decrement_strong_count::<
            std::sync::RwLock<LazyGroupBy>,
        >(ptr);
    }
}

#[no_mangle]
pub extern "C" fn cst_new_box_autoadd_point() -> *mut wire_cst_point {
    flutter_rust_bridge::for_generated::new_leak_box_ptr(wire_cst_point::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn cst_new_box_autoadd_size() -> *mut wire_cst_size {
    flutter_rust_bridge::for_generated::new_leak_box_ptr(wire_cst_size::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn cst_new_list_String(len: i32) -> *mut wire_cst_list_String {
    let wrap = wire_cst_list_String {
        ptr: flutter_rust_bridge::for_generated::new_leak_vec_ptr(
            <*mut wire_cst_list_prim_u_8>::new_with_null_ptr(),
            len,
        ),
        len,
    };
    flutter_rust_bridge::for_generated::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn cst_new_list_prim_u_8(len: i32) -> *mut wire_cst_list_prim_u_8 {
    let ans = wire_cst_list_prim_u_8 {
        ptr: flutter_rust_bridge::for_generated::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    flutter_rust_bridge::for_generated::new_leak_box_ptr(ans)
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_list_String {
    ptr: *mut *mut wire_cst_list_prim_u_8,
    len: i32,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_list_prim_u_8 {
    ptr: *mut u8,
    len: i32,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_point {
    x: f64,
    y: f64,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_size {
    width: i32,
    height: i32,
}
