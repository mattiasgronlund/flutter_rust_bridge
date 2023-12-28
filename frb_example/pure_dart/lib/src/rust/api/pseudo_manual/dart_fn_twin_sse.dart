// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.5.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<void> rustCallDartSimpleTwinSse(
        {required FutureOr<void> Function() callback, dynamic hint}) =>
    RustLib.instance.api
        .rustCallDartSimpleTwinSse(callback: callback, hint: hint);

Future<void> rustCallDartOneArgTwinSse(
        {required FutureOr<void> Function(String) callback, dynamic hint}) =>
    RustLib.instance.api
        .rustCallDartOneArgTwinSse(callback: callback, hint: hint);

Future<void> rustCallDartTwoArgsTwinSse(
        {required FutureOr<void> Function(
                String, DemoStructForRustCallDartTwinSse)
            callback,
        dynamic hint}) =>
    RustLib.instance.api
        .rustCallDartTwoArgsTwinSse(callback: callback, hint: hint);

Future<void> rustCallDartReturnTwinSse(
        {required FutureOr<String> Function() callback, dynamic hint}) =>
    RustLib.instance.api
        .rustCallDartReturnTwinSse(callback: callback, hint: hint);

Future<void> rustCallDartLoopbackTwinSse(
        {required FutureOr<DemoStructForRustCallDartTwinSse> Function(
                DemoStructForRustCallDartTwinSse)
            callback,
        dynamic hint}) =>
    RustLib.instance.api
        .rustCallDartLoopbackTwinSse(callback: callback, hint: hint);

Future<void> rustCallDartWithDartOpaqueArgTwinSse(
        {required Object input,
        required FutureOr<void> Function(Object) callback,
        dynamic hint}) =>
    RustLib.instance.api.rustCallDartWithDartOpaqueArgTwinSse(
        input: input, callback: callback, hint: hint);

Future<Object> rustCallDartWithDartOpaqueResultTwinSse(
        {required FutureOr<Object> Function() callback, dynamic hint}) =>
    RustLib.instance.api.rustCallDartWithDartOpaqueResultTwinSse(
        callback: callback, hint: hint);

Future<void> rustCallDartMultiTimesTwinSse(
        {required FutureOr<void> Function() callback,
        required int numTimes,
        dynamic hint}) =>
    RustLib.instance.api.rustCallDartMultiTimesTwinSse(
        callback: callback, numTimes: numTimes, hint: hint);

class DemoStructForRustCallDartTwinSse {
  final String name;

  const DemoStructForRustCallDartTwinSse({
    required this.name,
  });

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DemoStructForRustCallDartTwinSse &&
          runtimeType == other.runtimeType &&
          name == other.name;
}
