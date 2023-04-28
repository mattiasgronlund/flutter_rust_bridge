// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.75.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated_api_3.io.dart' if (dart.library.html) 'bridge_generated_api_3.web.dart';
import 'bridge_generated_shares.dart';
export 'bridge_generated_shares.dart';
import 'bridge_generated_shares.io.dart' if (dart.library.html) 'bridge_generated_shares.web.dart';

abstract class ApiClass3 {
  Future<double> testInbuiltTypeInBlock3({required int a, required double b, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestInbuiltTypeInBlock3ConstMeta;

  Future<String> testStringInBlock3({required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStringInBlock3ConstMeta;

  Future<SharedStructOnlyForSyncTest> testSharedStructOnlyForSyncWithNoSyncReturnInBlock3(
      {required double score, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestSharedStructOnlyForSyncWithNoSyncReturnInBlock3ConstMeta;

  Future<SharedStructInAllBlocks> testAllSharedStructInBlock3(
      {required SharedStructInAllBlocks custom, required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestAllSharedStructInBlock3ConstMeta;

  Future<SharedStructInBlock2And3> testSharedStructInBlock3For2And3(
      {required SharedStructInBlock2And3 custom, required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestSharedStructInBlock3For2And3ConstMeta;

  Future<CrossSharedStructInBlock2And3> testCrossSharedStructInBlock3For2And3({required String name, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestCrossSharedStructInBlock3For2And3ConstMeta;

  CrossSharedStructInBlock2And3 testCrossSharedStructInSyncInBlock3For2And3({required String name, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestCrossSharedStructInSyncInBlock3For2And3ConstMeta;

  Future<StructOnlyForBlock3> testUniqueStruct3(
      {required StructOnlyForBlock3 custom, required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestUniqueStruct3ConstMeta;

  Future<String> testStructDefinedInBlock3({required StructDefinedInBlock3 custom, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStructDefinedInBlock3ConstMeta;

  Future<String> testMethodMethodStructDefinedInBlock3(
      {required StructDefinedInBlock3 that, required String message, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestMethodMethodStructDefinedInBlock3ConstMeta;

  Future<String> testStaticMethodStaticMethodStructDefinedInBlock3({required String message, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStaticMethodStaticMethodStructDefinedInBlock3ConstMeta;
}

class StructDefinedInBlock3 {
  final ApiClass3 bridge;
  final String name;

  const StructDefinedInBlock3({
    required this.bridge,
    required this.name,
  });

  Future<String> testMethod({required String message, dynamic hint}) => bridge.testMethodMethodStructDefinedInBlock3(
        that: this,
        message: message,
      );

  static Future<String> testStaticMethod({required ApiClass3 bridge, required String message, dynamic hint}) =>
      bridge.testStaticMethodStaticMethodStructDefinedInBlock3(message: message, hint: hint);
}

/// This is a struct only used in API block 3 for test, but not defined in block file
class StructOnlyForBlock3 {
  final int id;
  final double num;
  final String name;

  const StructOnlyForBlock3({
    required this.id,
    required this.num,
    required this.name,
  });
}

class ApiClass3Impl implements ApiClass3 {
  final ApiClass3Platform _platform;
  final BridgeGeneratedSharesPlatform _sharedPlatform;
  final BridgeGeneratedSharesImpl _sharedImpl;

  factory ApiClass3Impl(ExternalLibrary dylib) {
    final platform = ApiClass3Platform(dylib);
    final sharedPlatform = BridgeGeneratedSharesPlatform(dylib);
    final sharedImpl = BridgeGeneratedSharesImpl(dylib);
    return ApiClass3Impl.raw(platform, sharedPlatform, sharedImpl);
  }

  ApiClass3Impl.raw(this._platform, this._sharedPlatform, this._sharedImpl);

  /// Only valid on web/WASM platforms.
  factory ApiClass3Impl.wasm(FutureOr<WasmModule> module) => ApiClass3Impl(module as ExternalLibrary);

  Future<double> testInbuiltTypeInBlock3({required int a, required double b, dynamic hint}) {
    var arg0 = api2wire_i32(a);
    var arg1 = api2wire_f32(b);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_inbuilt_type_in_block_3(port_, arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_f32,
      constMeta: kTestInbuiltTypeInBlock3ConstMeta,
      argValues: [a, b],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestInbuiltTypeInBlock3ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_inbuilt_type_in_block_3",
        argNames: ["a", "b"],
      );

  Future<String> testStringInBlock3({required String s, required int i, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(s);
    var arg1 = _sharedPlatform.api2wire_u64(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_string_in_block_3(port_, arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestStringInBlock3ConstMeta,
      argValues: [s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStringInBlock3ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_string_in_block_3",
        argNames: ["s", "i"],
      );

  Future<SharedStructOnlyForSyncTest> testSharedStructOnlyForSyncWithNoSyncReturnInBlock3(
      {required double score, dynamic hint}) {
    var arg0 = api2wire_f64(score);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_test_shared_struct_only_for_sync_with_no_sync_return_in_block_3(port_, arg0),
      parseSuccessData: _sharedImpl.wire2api_shared_struct_only_for_sync_test,
      constMeta: kTestSharedStructOnlyForSyncWithNoSyncReturnInBlock3ConstMeta,
      argValues: [score],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestSharedStructOnlyForSyncWithNoSyncReturnInBlock3ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_shared_struct_only_for_sync_with_no_sync_return_in_block_3",
        argNames: ["score"],
      );

  Future<SharedStructInAllBlocks> testAllSharedStructInBlock3(
      {required SharedStructInAllBlocks custom, required String s, required int i, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_box_autoadd_shared_struct_in_all_blocks(custom);
    var arg1 = _sharedPlatform.api2wire_String(s);
    var arg2 = api2wire_i32(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_all_shared_struct_in_block_3(port_, arg0, arg1, arg2),
      parseSuccessData: _sharedImpl.wire2api_shared_struct_in_all_blocks,
      constMeta: kTestAllSharedStructInBlock3ConstMeta,
      argValues: [custom, s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestAllSharedStructInBlock3ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_all_shared_struct_in_block_3",
        argNames: ["custom", "s", "i"],
      );

  Future<SharedStructInBlock2And3> testSharedStructInBlock3For2And3(
      {required SharedStructInBlock2And3 custom, required String s, required int i, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_box_autoadd_shared_struct_in_block_2_and_3(custom);
    var arg1 = _sharedPlatform.api2wire_String(s);
    var arg2 = api2wire_i32(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_shared_struct_in_block_3_for_2_and_3(port_, arg0, arg1, arg2),
      parseSuccessData: _sharedImpl.wire2api_shared_struct_in_block_2_and_3,
      constMeta: kTestSharedStructInBlock3For2And3ConstMeta,
      argValues: [custom, s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestSharedStructInBlock3For2And3ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_shared_struct_in_block_3_for_2_and_3",
        argNames: ["custom", "s", "i"],
      );

  Future<CrossSharedStructInBlock2And3> testCrossSharedStructInBlock3For2And3({required String name, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(name);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_cross_shared_struct_in_block_3_for_2_and_3(port_, arg0),
      parseSuccessData: _sharedImpl.wire2api_cross_shared_struct_in_block_2_and_3,
      constMeta: kTestCrossSharedStructInBlock3For2And3ConstMeta,
      argValues: [name],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestCrossSharedStructInBlock3For2And3ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_cross_shared_struct_in_block_3_for_2_and_3",
        argNames: ["name"],
      );

  CrossSharedStructInBlock2And3 testCrossSharedStructInSyncInBlock3For2And3({required String name, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(name);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_test_cross_shared_struct_in_sync_in_block_3_for_2_and_3(arg0),
      parseSuccessData: _sharedImpl.wire2api_cross_shared_struct_in_block_2_and_3,
      constMeta: kTestCrossSharedStructInSyncInBlock3For2And3ConstMeta,
      argValues: [name],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestCrossSharedStructInSyncInBlock3For2And3ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_cross_shared_struct_in_sync_in_block_3_for_2_and_3",
        argNames: ["name"],
      );

  Future<StructOnlyForBlock3> testUniqueStruct3(
      {required StructOnlyForBlock3 custom, required String s, required int i, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_struct_only_for_block_3(custom);
    var arg1 = _sharedPlatform.api2wire_String(s);
    var arg2 = _platform.api2wire_i64(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_unique_struct_3(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_struct_only_for_block_3,
      constMeta: kTestUniqueStruct3ConstMeta,
      argValues: [custom, s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestUniqueStruct3ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_unique_struct_3",
        argNames: ["custom", "s", "i"],
      );

  Future<String> testStructDefinedInBlock3({required StructDefinedInBlock3 custom, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_struct_defined_in_block_3(custom);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_struct_defined_in_block_3(port_, arg0),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestStructDefinedInBlock3ConstMeta,
      argValues: [custom],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStructDefinedInBlock3ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_struct_defined_in_block_3",
        argNames: ["custom"],
      );

  Future<String> testMethodMethodStructDefinedInBlock3(
      {required StructDefinedInBlock3 that, required String message, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_struct_defined_in_block_3(that);
    var arg1 = _sharedPlatform.api2wire_String(message);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_method__method__StructDefinedInBlock3(port_, arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestMethodMethodStructDefinedInBlock3ConstMeta,
      argValues: [that, message],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestMethodMethodStructDefinedInBlock3ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_method__method__StructDefinedInBlock3",
        argNames: ["that", "message"],
      );

  Future<String> testStaticMethodStaticMethodStructDefinedInBlock3({required String message, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(message);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_static_method__static_method__StructDefinedInBlock3(port_, arg0),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestStaticMethodStaticMethodStructDefinedInBlock3ConstMeta,
      argValues: [message],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStaticMethodStaticMethodStructDefinedInBlock3ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_static_method__static_method__StructDefinedInBlock3",
        argNames: ["message"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  int _wire2api_i64(dynamic raw) {
    return castInt(raw);
  }

  StructOnlyForBlock3 _wire2api_struct_only_for_block_3(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3) throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return StructOnlyForBlock3(
      id: _wire2api_i64(arr[0]),
      num: _sharedImpl.wire2api_f64(arr[1]),
      name: _sharedImpl.wire2api_String(arr[2]),
    );
  }
}

// Section: api2wire

// Section: finalizer
