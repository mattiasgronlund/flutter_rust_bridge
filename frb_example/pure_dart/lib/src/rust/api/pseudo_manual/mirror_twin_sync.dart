// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.5.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'mirror_twin_sync_sse.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

ApplicationSettings getAppSettingsTwinSync({dynamic hint}) =>
    RustLib.instance.api.getAppSettingsTwinSync(hint: hint);

ApplicationSettings getFallibleAppSettingsTwinSync({dynamic hint}) =>
    RustLib.instance.api.getFallibleAppSettingsTwinSync(hint: hint);

bool isAppEmbeddedTwinSync(
        {required ApplicationSettings appSettings, dynamic hint}) =>
    RustLib.instance.api
        .isAppEmbeddedTwinSync(appSettings: appSettings, hint: hint);

Stream<ApplicationSettings> appSettingsStreamTwinSync({dynamic hint}) =>
    RustLib.instance.api.appSettingsStreamTwinSync(hint: hint);

Stream<List<ApplicationSettings>> appSettingsVecStreamTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api.appSettingsVecStreamTwinSync(hint: hint);

Stream<MirrorStructTwinSync> mirrorStructStreamTwinSync({dynamic hint}) =>
    RustLib.instance.api.mirrorStructStreamTwinSync(hint: hint);

Stream<(ApplicationSettings, RawStringEnumMirrored)> mirrorTupleStreamTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api.mirrorTupleStreamTwinSync(hint: hint);

ApplicationMessage getMessageTwinSync({dynamic hint}) =>
    RustLib.instance.api.getMessageTwinSync(hint: hint);

Numbers repeatNumberTwinSync(
        {required int num, required int times, dynamic hint}) =>
    RustLib.instance.api
        .repeatNumberTwinSync(num: num, times: times, hint: hint);

Sequences repeatSequenceTwinSync(
        {required int seq, required int times, dynamic hint}) =>
    RustLib.instance.api
        .repeatSequenceTwinSync(seq: seq, times: times, hint: hint);

int? firstNumberTwinSync({required Numbers nums, dynamic hint}) =>
    RustLib.instance.api.firstNumberTwinSync(nums: nums, hint: hint);

int? firstSequenceTwinSync({required Sequences seqs, dynamic hint}) =>
    RustLib.instance.api.firstSequenceTwinSync(seqs: seqs, hint: hint);

RawStringMirrored testRawStringMirroredTwinSync({dynamic hint}) =>
    RustLib.instance.api.testRawStringMirroredTwinSync(hint: hint);

NestedRawStringMirrored testNestedRawStringMirroredTwinSync({dynamic hint}) =>
    RustLib.instance.api.testNestedRawStringMirroredTwinSync(hint: hint);

RawStringEnumMirrored testRawStringEnumMirroredTwinSync(
        {required bool nested, dynamic hint}) =>
    RustLib.instance.api
        .testRawStringEnumMirroredTwinSync(nested: nested, hint: hint);

ListOfNestedRawStringMirrored testListOfRawNestedStringMirroredTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api.testListOfRawNestedStringMirroredTwinSync(hint: hint);

List<RawStringMirrored> testFallibleOfRawStringMirroredTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api.testFallibleOfRawStringMirroredTwinSync(hint: hint);

List<RawStringEnumMirrored> testListOfNestedEnumsMirroredTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api.testListOfNestedEnumsMirroredTwinSync(hint: hint);

ContainsMirroredSubStructTwinSync testContainsMirroredSubStructTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api.testContainsMirroredSubStructTwinSync(hint: hint);

class AnotherTwinSync {
  final String a;

  const AnotherTwinSync({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnotherTwinSync &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class ContainsMirroredSubStructTwinSync {
  final RawStringMirrored test;
  final AnotherTwinSync test2;

  const ContainsMirroredSubStructTwinSync({
    required this.test,
    required this.test2,
  });

  @override
  int get hashCode => test.hashCode ^ test2.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainsMirroredSubStructTwinSync &&
          runtimeType == other.runtimeType &&
          test == other.test &&
          test2 == other.test2;
}

class MirrorStructTwinSync {
  final ApplicationSettings a;
  final MyStruct b;
  final List<MyEnum> c;
  final List<ApplicationSettings> d;

  const MirrorStructTwinSync({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  @override
  int get hashCode => a.hashCode ^ b.hashCode ^ c.hashCode ^ d.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MirrorStructTwinSync &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b &&
          c == other.c &&
          d == other.d;
}
