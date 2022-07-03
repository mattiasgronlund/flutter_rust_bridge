#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

use crate::api::*;
use flutter_rust_bridge::*;

// Section: imports

// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_do_something__method(
    port_: i64,
    StructWithMethod__method: *mut wire_StructWithMethod,
    _u: u32,
    _x: *mut wire_uint_8_list,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "do_something__method",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_StructWithMethod__method = StructWithMethod__method.wire2api();
            let api__u = _u.wire2api();
            let api__x = _x.wire2api();
            move |task_callback| {
                Ok(StructWithMethod::do_something__method(
                    &api_StructWithMethod__method,
                    api__u,
                    api__x,
                ))
            }
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_return_struct(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "return_struct",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(return_struct()),
    )
}

// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_StructWithMethod {
    something: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

// Section: wrapper structs

// Section: static checks

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_box_autoadd_struct_with_method() -> *mut wire_StructWithMethod {
    support::new_leak_box_ptr(wire_StructWithMethod::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_uint_8_list(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        if self.is_null() {
            None
        } else {
            Some(self.wire2api())
        }
    }
}

impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}

impl Wire2Api<StructWithMethod> for *mut wire_StructWithMethod {
    fn wire2api(self) -> StructWithMethod {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        (*wrap).wire2api().into()
    }
}

impl Wire2Api<StructWithMethod> for wire_StructWithMethod {
    fn wire2api(self) -> StructWithMethod {
        StructWithMethod {
            something: self.something.wire2api(),
        }
    }
}

impl Wire2Api<u32> for u32 {
    fn wire2api(self) -> u32 {
        self
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl NewWithNullPtr for wire_StructWithMethod {
    fn new_with_null_ptr() -> Self {
        Self {
            something: core::ptr::null_mut(),
        }
    }
}

// Section: impl IntoDart

impl support::IntoDart for StructWithMethod {
    fn into_dart(self) -> support::DartCObject {
        vec![self.something.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for StructWithMethod {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturnStruct(val: support::WireSyncReturnStruct) {
    unsafe {
        let _ = support::vec_from_leak_ptr(val.ptr, val.len);
    }
}
