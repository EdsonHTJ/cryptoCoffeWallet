///
//  Generated code. Do not modify.
//  source: completeTx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../api/api.pb.dart' as $2;
import '../core/Tron.pb.dart' as $0;
import '../core/contract/asset_issue_contract.pb.dart' as $6;

class ProtoCompleteTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProtoCompleteTransaction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BlockNumber', $pb.PbFieldType.OU6, protoName: 'BlockNumber', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BlockTime', $pb.PbFieldType.OU6, protoName: 'BlockTime', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$2.TransactionExtention>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tx', protoName: 'Tx', subBuilder: $2.TransactionExtention.create)
    ..aOM<$0.TransactionInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Info', protoName: 'Info', subBuilder: $0.TransactionInfo.create)
    ..aOM<$0.Exchange>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExchangeInfo', protoName: 'ExchangeInfo', subBuilder: $0.Exchange.create)
    ..aOM<$6.AssetIssueContract>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AssetInfo', protoName: 'AssetInfo', subBuilder: $6.AssetIssueContract.create)
    ..hasRequiredFields = false
  ;

  ProtoCompleteTransaction._() : super();
  factory ProtoCompleteTransaction({
    $fixnum.Int64? blockNumber,
    $fixnum.Int64? blockTime,
    $2.TransactionExtention? tx,
    $0.TransactionInfo? info,
    $0.Exchange? exchangeInfo,
    $6.AssetIssueContract? assetInfo,
  }) {
    final _result = create();
    if (blockNumber != null) {
      _result.blockNumber = blockNumber;
    }
    if (blockTime != null) {
      _result.blockTime = blockTime;
    }
    if (tx != null) {
      _result.tx = tx;
    }
    if (info != null) {
      _result.info = info;
    }
    if (exchangeInfo != null) {
      _result.exchangeInfo = exchangeInfo;
    }
    if (assetInfo != null) {
      _result.assetInfo = assetInfo;
    }
    return _result;
  }
  factory ProtoCompleteTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoCompleteTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoCompleteTransaction clone() => ProtoCompleteTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoCompleteTransaction copyWith(void Function(ProtoCompleteTransaction) updates) => super.copyWith((message) => updates(message as ProtoCompleteTransaction)) as ProtoCompleteTransaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProtoCompleteTransaction create() => ProtoCompleteTransaction._();
  ProtoCompleteTransaction createEmptyInstance() => create();
  static $pb.PbList<ProtoCompleteTransaction> createRepeated() => $pb.PbList<ProtoCompleteTransaction>();
  @$core.pragma('dart2js:noInline')
  static ProtoCompleteTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoCompleteTransaction>(create);
  static ProtoCompleteTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set blockNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockNumber() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockTime => $_getI64(1);
  @$pb.TagNumber(2)
  set blockTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockTime() => clearField(2);

  @$pb.TagNumber(3)
  $2.TransactionExtention get tx => $_getN(2);
  @$pb.TagNumber(3)
  set tx($2.TransactionExtention v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTx() => $_has(2);
  @$pb.TagNumber(3)
  void clearTx() => clearField(3);
  @$pb.TagNumber(3)
  $2.TransactionExtention ensureTx() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.TransactionInfo get info => $_getN(3);
  @$pb.TagNumber(4)
  set info($0.TransactionInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
  @$pb.TagNumber(4)
  $0.TransactionInfo ensureInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Exchange get exchangeInfo => $_getN(4);
  @$pb.TagNumber(5)
  set exchangeInfo($0.Exchange v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasExchangeInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearExchangeInfo() => clearField(5);
  @$pb.TagNumber(5)
  $0.Exchange ensureExchangeInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  $6.AssetIssueContract get assetInfo => $_getN(5);
  @$pb.TagNumber(6)
  set assetInfo($6.AssetIssueContract v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAssetInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssetInfo() => clearField(6);
  @$pb.TagNumber(6)
  $6.AssetIssueContract ensureAssetInfo() => $_ensure(5);
}

