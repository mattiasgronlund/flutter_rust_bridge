// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.8.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<DataFrame> readSampleDataset({dynamic hint}) =>
    RustLib.instance.api.readSampleDataset(hint: hint);

Expr col({required String name, dynamic hint}) =>
    RustLib.instance.api.col(name: name, hint: hint);

Expr lit({required double t, dynamic hint}) =>
    RustLib.instance.api.lit(t: t, hint: hint);

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<DataFrame>>
@sealed
class DataFrame extends RustOpaque {
  DataFrame.dcoDecode(dynamic wire) : super.dcoDecode(wire, _kStaticData);

  DataFrame.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_DataFrame,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_DataFrame,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_DataFramePtr,
  );

  Future<List<String>> getColumn({required String name, dynamic hint}) =>
      RustLib.instance.api.dataFrameGetColumn(
        that: this,
        name: name,
      );

  List<String> getColumnNames({dynamic hint}) =>
      RustLib.instance.api.dataFrameGetColumnNames(
        that: this,
      );

  LazyFrame lazy({dynamic hint}) => RustLib.instance.api.dataFrameLazy(
        that: this,
      );
}

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<Expr>>
@sealed
class Expr extends RustOpaque {
  Expr.dcoDecode(dynamic wire) : super.dcoDecode(wire, _kStaticData);

  Expr.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_Expr,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_Expr,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_ExprPtr,
  );

  Expr gt({required Expr other, dynamic hint}) => RustLib.instance.api.exprGt(
        that: this,
        other: other,
      );

  Expr sum({dynamic hint}) => RustLib.instance.api.exprSum(
        that: this,
      );
}

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<LazyFrame>>
@sealed
class LazyFrame extends RustOpaque {
  LazyFrame.dcoDecode(dynamic wire) : super.dcoDecode(wire, _kStaticData);

  LazyFrame.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_LazyFrame,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_LazyFrame,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_LazyFramePtr,
  );

  Future<DataFrame> collect({dynamic hint}) =>
      RustLib.instance.api.lazyFrameCollect(
        that: this,
      );

  LazyFrame filter({required Expr predicate, dynamic hint}) =>
      RustLib.instance.api.lazyFrameFilter(
        that: this,
        predicate: predicate,
      );

  LazyGroupBy groupBy({required Expr expr, dynamic hint}) =>
      RustLib.instance.api.lazyFrameGroupBy(
        that: this,
        expr: expr,
      );
}

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<LazyGroupBy>>
@sealed
class LazyGroupBy extends RustOpaque {
  LazyGroupBy.dcoDecode(dynamic wire) : super.dcoDecode(wire, _kStaticData);

  LazyGroupBy.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_LazyGroupBy,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_LazyGroupBy,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_LazyGroupByPtr,
  );

  LazyFrame agg({required Expr expr, dynamic hint}) =>
      RustLib.instance.api.lazyGroupByAgg(
        that: this,
        expr: expr,
      );
}
