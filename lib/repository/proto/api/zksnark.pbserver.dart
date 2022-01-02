///
//  Generated code. Do not modify.
//  source: api/zksnark.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'zksnark.pb.dart' as $13;
import 'zksnark.pbjson.dart';

export 'zksnark.pb.dart';

abstract class TronZksnarkServiceBase extends $pb.GeneratedService {
  $async.Future<$13.ZksnarkResponse> checkZksnarkProof($pb.ServerContext ctx, $13.ZksnarkRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CheckZksnarkProof': return $13.ZksnarkRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CheckZksnarkProof': return this.checkZksnarkProof(ctx, request as $13.ZksnarkRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  //$core.Map<$core.String, $core.dynamic> get $json => TronZksnarkServiceBase$json;
  //$core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TronZksnarkServiceBase$messageJson;
}

