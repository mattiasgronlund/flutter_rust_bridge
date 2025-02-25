// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.8.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'api/mandelbrot.dart';
import 'api/polars.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.io.dart' if (dart.library.html) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'rust_lib',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<Uint8List> drawMandelbrot(
      {required Size imageSize,
      required Point zoomPoint,
      required double scale,
      required int numThreads,
      dynamic hint});

  Future<List<String>> dataFrameGetColumn(
      {required DataFrame that, required String name, dynamic hint});

  List<String> dataFrameGetColumnNames({required DataFrame that, dynamic hint});

  LazyFrame dataFrameLazy({required DataFrame that, dynamic hint});

  Expr exprGt({required Expr that, required Expr other, dynamic hint});

  Expr exprSum({required Expr that, dynamic hint});

  Future<DataFrame> lazyFrameCollect({required LazyFrame that, dynamic hint});

  LazyFrame lazyFrameFilter(
      {required LazyFrame that, required Expr predicate, dynamic hint});

  LazyGroupBy lazyFrameGroupBy(
      {required LazyFrame that, required Expr expr, dynamic hint});

  LazyFrame lazyGroupByAgg(
      {required LazyGroupBy that, required Expr expr, dynamic hint});

  Expr col({required String name, dynamic hint});

  Expr lit({required double t, dynamic hint});

  Future<DataFrame> readSampleDataset({dynamic hint});

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_DataFrame;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_DataFrame;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_DataFramePtr;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_Expr;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_Expr;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_ExprPtr;

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_LazyFrame;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_LazyFrame;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_LazyFramePtr;

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_LazyGroupBy;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_LazyGroupBy;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_LazyGroupByPtr;
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<Uint8List> drawMandelbrot(
      {required Size imageSize,
      required Point zoomPoint,
      required double scale,
      required int numThreads,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_box_autoadd_size(imageSize);
        var arg1 = cst_encode_box_autoadd_point(zoomPoint);
        var arg2 = cst_encode_f_64(scale);
        var arg3 = cst_encode_i_32(numThreads);
        return wire.wire_draw_mandelbrot(port_, arg0, arg1, arg2, arg3);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_list_prim_u_8,
        decodeErrorData: dco_decode_AnyhowException,
      ),
      constMeta: kDrawMandelbrotConstMeta,
      argValues: [imageSize, zoomPoint, scale, numThreads],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kDrawMandelbrotConstMeta => const TaskConstMeta(
        debugName: "draw_mandelbrot",
        argNames: ["imageSize", "zoomPoint", "scale", "numThreads"],
      );

  @override
  Future<List<String>> dataFrameGetColumn(
      {required DataFrame that, required String name, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_Auto_Ref_RustOpaque_stdsyncRwLockDataFrame(that);
        var arg1 = cst_encode_String(name);
        return wire.wire_DataFrame_get_column(port_, arg0, arg1);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_list_String,
        decodeErrorData: dco_decode_AnyhowException,
      ),
      constMeta: kDataFrameGetColumnConstMeta,
      argValues: [that, name],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kDataFrameGetColumnConstMeta => const TaskConstMeta(
        debugName: "DataFrame_get_column",
        argNames: ["that", "name"],
      );

  @override
  List<String> dataFrameGetColumnNames(
      {required DataFrame that, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 = cst_encode_Auto_Ref_RustOpaque_stdsyncRwLockDataFrame(that);
        return wire.wire_DataFrame_get_column_names(arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_list_String,
        decodeErrorData: null,
      ),
      constMeta: kDataFrameGetColumnNamesConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kDataFrameGetColumnNamesConstMeta => const TaskConstMeta(
        debugName: "DataFrame_get_column_names",
        argNames: ["that"],
      );

  @override
  LazyFrame dataFrameLazy({required DataFrame that, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 =
            cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockDataFrame(that);
        return wire.wire_DataFrame_lazy(arg0);
      },
      codec: DcoCodec(
        decodeSuccessData:
            dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame,
        decodeErrorData: null,
      ),
      constMeta: kDataFrameLazyConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kDataFrameLazyConstMeta => const TaskConstMeta(
        debugName: "DataFrame_lazy",
        argNames: ["that"],
      );

  @override
  Expr exprGt({required Expr that, required Expr other, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 = cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(that);
        var arg1 = cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(other);
        return wire.wire_Expr_gt(arg0, arg1);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockExpr,
        decodeErrorData: null,
      ),
      constMeta: kExprGtConstMeta,
      argValues: [that, other],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kExprGtConstMeta => const TaskConstMeta(
        debugName: "Expr_gt",
        argNames: ["that", "other"],
      );

  @override
  Expr exprSum({required Expr that, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 = cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(that);
        return wire.wire_Expr_sum(arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockExpr,
        decodeErrorData: null,
      ),
      constMeta: kExprSumConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kExprSumConstMeta => const TaskConstMeta(
        debugName: "Expr_sum",
        argNames: ["that"],
      );

  @override
  Future<DataFrame> lazyFrameCollect({required LazyFrame that, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 =
            cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame(that);
        return wire.wire_LazyFrame_collect(port_, arg0);
      },
      codec: DcoCodec(
        decodeSuccessData:
            dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockDataFrame,
        decodeErrorData: null,
      ),
      constMeta: kLazyFrameCollectConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLazyFrameCollectConstMeta => const TaskConstMeta(
        debugName: "LazyFrame_collect",
        argNames: ["that"],
      );

  @override
  LazyFrame lazyFrameFilter(
      {required LazyFrame that, required Expr predicate, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 =
            cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame(that);
        var arg1 =
            cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(predicate);
        return wire.wire_LazyFrame_filter(arg0, arg1);
      },
      codec: DcoCodec(
        decodeSuccessData:
            dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame,
        decodeErrorData: null,
      ),
      constMeta: kLazyFrameFilterConstMeta,
      argValues: [that, predicate],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLazyFrameFilterConstMeta => const TaskConstMeta(
        debugName: "LazyFrame_filter",
        argNames: ["that", "predicate"],
      );

  @override
  LazyGroupBy lazyFrameGroupBy(
      {required LazyFrame that, required Expr expr, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 =
            cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame(that);
        var arg1 = cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(expr);
        return wire.wire_LazyFrame_group_by(arg0, arg1);
      },
      codec: DcoCodec(
        decodeSuccessData:
            dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyGroupBy,
        decodeErrorData: null,
      ),
      constMeta: kLazyFrameGroupByConstMeta,
      argValues: [that, expr],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLazyFrameGroupByConstMeta => const TaskConstMeta(
        debugName: "LazyFrame_group_by",
        argNames: ["that", "expr"],
      );

  @override
  LazyFrame lazyGroupByAgg(
      {required LazyGroupBy that, required Expr expr, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 =
            cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyGroupBy(that);
        var arg1 = cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(expr);
        return wire.wire_LazyGroupBy_agg(arg0, arg1);
      },
      codec: DcoCodec(
        decodeSuccessData:
            dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame,
        decodeErrorData: null,
      ),
      constMeta: kLazyGroupByAggConstMeta,
      argValues: [that, expr],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLazyGroupByAggConstMeta => const TaskConstMeta(
        debugName: "LazyGroupBy_agg",
        argNames: ["that", "expr"],
      );

  @override
  Expr col({required String name, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 = cst_encode_String(name);
        return wire.wire_col(arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockExpr,
        decodeErrorData: null,
      ),
      constMeta: kColConstMeta,
      argValues: [name],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kColConstMeta => const TaskConstMeta(
        debugName: "col",
        argNames: ["name"],
      );

  @override
  Expr lit({required double t, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        var arg0 = cst_encode_f_64(t);
        return wire.wire_lit(arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockExpr,
        decodeErrorData: null,
      ),
      constMeta: kLitConstMeta,
      argValues: [t],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLitConstMeta => const TaskConstMeta(
        debugName: "lit",
        argNames: ["t"],
      );

  @override
  Future<DataFrame> readSampleDataset({dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        return wire.wire_read_sample_dataset(port_);
      },
      codec: DcoCodec(
        decodeSuccessData:
            dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockDataFrame,
        decodeErrorData: null,
      ),
      constMeta: kReadSampleDatasetConstMeta,
      argValues: [],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kReadSampleDatasetConstMeta => const TaskConstMeta(
        debugName: "read_sample_dataset",
        argNames: [],
      );

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_DataFrame => wire
          .rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockDataFrame;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_DataFrame => wire
          .rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockDataFrame;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_Expr =>
      wire.rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockExpr;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_Expr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockExpr;

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_LazyFrame => wire
          .rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockLazyFrame;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_LazyFrame => wire
          .rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockLazyFrame;

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_LazyGroupBy => wire
          .rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockLazyGroupBy;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_LazyGroupBy => wire
          .rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockLazyGroupBy;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    return AnyhowException(raw as String);
  }

  @protected
  DataFrame dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockDataFrame(
      dynamic raw) {
    return DataFrame.dcoDecode(raw);
  }

  @protected
  Expr dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(dynamic raw) {
    return Expr.dcoDecode(raw);
  }

  @protected
  LazyFrame dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame(
      dynamic raw) {
    return LazyFrame.dcoDecode(raw);
  }

  @protected
  LazyGroupBy dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyGroupBy(
      dynamic raw) {
    return LazyGroupBy.dcoDecode(raw);
  }

  @protected
  DataFrame dco_decode_Auto_Ref_RustOpaque_stdsyncRwLockDataFrame(dynamic raw) {
    return DataFrame.dcoDecode(raw);
  }

  @protected
  DataFrame dco_decode_RustOpaque_stdsyncRwLockDataFrame(dynamic raw) {
    return DataFrame.dcoDecode(raw);
  }

  @protected
  Expr dco_decode_RustOpaque_stdsyncRwLockExpr(dynamic raw) {
    return Expr.dcoDecode(raw);
  }

  @protected
  LazyFrame dco_decode_RustOpaque_stdsyncRwLockLazyFrame(dynamic raw) {
    return LazyFrame.dcoDecode(raw);
  }

  @protected
  LazyGroupBy dco_decode_RustOpaque_stdsyncRwLockLazyGroupBy(dynamic raw) {
    return LazyGroupBy.dcoDecode(raw);
  }

  @protected
  String dco_decode_String(dynamic raw) {
    return raw as String;
  }

  @protected
  Point dco_decode_box_autoadd_point(dynamic raw) {
    return dco_decode_point(raw);
  }

  @protected
  Size dco_decode_box_autoadd_size(dynamic raw) {
    return dco_decode_size(raw);
  }

  @protected
  double dco_decode_f_64(dynamic raw) {
    return raw as double;
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    return raw as int;
  }

  @protected
  List<String> dco_decode_list_String(dynamic raw) {
    return (raw as List<dynamic>).map(dco_decode_String).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8(dynamic raw) {
    return raw as Uint8List;
  }

  @protected
  Point dco_decode_point(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Point(
      x: dco_decode_f_64(arr[0]),
      y: dco_decode_f_64(arr[1]),
    );
  }

  @protected
  Size dco_decode_size(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Size(
      width: dco_decode_i_32(arr[0]),
      height: dco_decode_i_32(arr[1]),
    );
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    return;
  }

  @protected
  int dco_decode_usize(dynamic raw) {
    return dcoDecodeI64OrU64(raw);
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  DataFrame sse_decode_Auto_Owned_RustOpaque_stdsyncRwLockDataFrame(
      SseDeserializer deserializer) {
    return DataFrame.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  Expr sse_decode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(
      SseDeserializer deserializer) {
    return Expr.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  LazyFrame sse_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame(
      SseDeserializer deserializer) {
    return LazyFrame.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  LazyGroupBy sse_decode_Auto_Owned_RustOpaque_stdsyncRwLockLazyGroupBy(
      SseDeserializer deserializer) {
    return LazyGroupBy.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  DataFrame sse_decode_Auto_Ref_RustOpaque_stdsyncRwLockDataFrame(
      SseDeserializer deserializer) {
    return DataFrame.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  DataFrame sse_decode_RustOpaque_stdsyncRwLockDataFrame(
      SseDeserializer deserializer) {
    return DataFrame.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  Expr sse_decode_RustOpaque_stdsyncRwLockExpr(SseDeserializer deserializer) {
    return Expr.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  LazyFrame sse_decode_RustOpaque_stdsyncRwLockLazyFrame(
      SseDeserializer deserializer) {
    return LazyFrame.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  LazyGroupBy sse_decode_RustOpaque_stdsyncRwLockLazyGroupBy(
      SseDeserializer deserializer) {
    return LazyGroupBy.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    var inner = sse_decode_list_prim_u_8(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  Point sse_decode_box_autoadd_point(SseDeserializer deserializer) {
    return (sse_decode_point(deserializer));
  }

  @protected
  Size sse_decode_box_autoadd_size(SseDeserializer deserializer) {
    return (sse_decode_size(deserializer));
  }

  @protected
  double sse_decode_f_64(SseDeserializer deserializer) {
    return deserializer.buffer.getFloat64();
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    return deserializer.buffer.getInt32();
  }

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer) {
    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <String>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_String(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8(SseDeserializer deserializer) {
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  Point sse_decode_point(SseDeserializer deserializer) {
    var var_x = sse_decode_f_64(deserializer);
    var var_y = sse_decode_f_64(deserializer);
    return Point(x: var_x, y: var_y);
  }

  @protected
  Size sse_decode_size(SseDeserializer deserializer) {
    var var_width = sse_decode_i_32(deserializer);
    var var_height = sse_decode_i_32(deserializer);
    return Size(width: var_width, height: var_height);
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {}

  @protected
  int sse_decode_usize(SseDeserializer deserializer) {
    return deserializer.buffer.getUint64();
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  PlatformPointer cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockDataFrame(
      DataFrame raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: true);
  }

  @protected
  PlatformPointer cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(Expr raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: true);
  }

  @protected
  PlatformPointer cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame(
      LazyFrame raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: true);
  }

  @protected
  PlatformPointer cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyGroupBy(
      LazyGroupBy raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: true);
  }

  @protected
  PlatformPointer cst_encode_Auto_Ref_RustOpaque_stdsyncRwLockDataFrame(
      DataFrame raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: false);
  }

  @protected
  PlatformPointer cst_encode_RustOpaque_stdsyncRwLockDataFrame(DataFrame raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode();
  }

  @protected
  PlatformPointer cst_encode_RustOpaque_stdsyncRwLockExpr(Expr raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode();
  }

  @protected
  PlatformPointer cst_encode_RustOpaque_stdsyncRwLockLazyFrame(LazyFrame raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode();
  }

  @protected
  PlatformPointer cst_encode_RustOpaque_stdsyncRwLockLazyGroupBy(
      LazyGroupBy raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode();
  }

  @protected
  double cst_encode_f_64(double raw) {
    return raw;
  }

  @protected
  int cst_encode_i_32(int raw) {
    return raw;
  }

  @protected
  int cst_encode_u_8(int raw) {
    return raw;
  }

  @protected
  void cst_encode_unit(void raw) {
    return raw;
  }

  @protected
  int cst_encode_usize(int raw) {
    return raw;
  }

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer) {
    throw UnimplementedError(
        'not yet supported in serialized mode, feel free to create an issue');
  }

  @protected
  void sse_encode_Auto_Owned_RustOpaque_stdsyncRwLockDataFrame(
      DataFrame self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: true), serializer);
  }

  @protected
  void sse_encode_Auto_Owned_RustOpaque_stdsyncRwLockExpr(
      Expr self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: true), serializer);
  }

  @protected
  void sse_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyFrame(
      LazyFrame self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: true), serializer);
  }

  @protected
  void sse_encode_Auto_Owned_RustOpaque_stdsyncRwLockLazyGroupBy(
      LazyGroupBy self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: true), serializer);
  }

  @protected
  void sse_encode_Auto_Ref_RustOpaque_stdsyncRwLockDataFrame(
      DataFrame self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: false), serializer);
  }

  @protected
  void sse_encode_RustOpaque_stdsyncRwLockDataFrame(
      DataFrame self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_RustOpaque_stdsyncRwLockExpr(
      Expr self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_RustOpaque_stdsyncRwLockLazyFrame(
      LazyFrame self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_RustOpaque_stdsyncRwLockLazyGroupBy(
      LazyGroupBy self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    sse_encode_list_prim_u_8(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_box_autoadd_point(Point self, SseSerializer serializer) {
    sse_encode_point(self, serializer);
  }

  @protected
  void sse_encode_box_autoadd_size(Size self, SseSerializer serializer) {
    sse_encode_size(self, serializer);
  }

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer) {
    serializer.buffer.putFloat64(self);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer) {
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_String(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8(Uint8List self, SseSerializer serializer) {
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_point(Point self, SseSerializer serializer) {
    sse_encode_f_64(self.x, serializer);
    sse_encode_f_64(self.y, serializer);
  }

  @protected
  void sse_encode_size(Size self, SseSerializer serializer) {
    sse_encode_i_32(self.width, serializer);
    sse_encode_i_32(self.height, serializer);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {}

  @protected
  void sse_encode_usize(int self, SseSerializer serializer) {
    serializer.buffer.putUint64(self);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}
