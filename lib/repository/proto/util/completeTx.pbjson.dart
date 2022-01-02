///
//  Generated code. Do not modify.
//  source: completeTx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use protoCompleteTransactionDescriptor instead')
const ProtoCompleteTransaction$json = const {
  '1': 'ProtoCompleteTransaction',
  '2': const [
    const {'1': 'BlockNumber', '3': 1, '4': 1, '5': 4, '10': 'BlockNumber'},
    const {'1': 'BlockTime', '3': 2, '4': 1, '5': 4, '10': 'BlockTime'},
    const {'1': 'Tx', '3': 3, '4': 1, '5': 11, '6': '.protocol.TransactionExtention', '10': 'Tx'},
    const {'1': 'Info', '3': 4, '4': 1, '5': 11, '6': '.protocol.TransactionInfo', '10': 'Info'},
    const {'1': 'ExchangeInfo', '3': 5, '4': 1, '5': 11, '6': '.protocol.Exchange', '10': 'ExchangeInfo'},
    const {'1': 'AssetInfo', '3': 6, '4': 1, '5': 11, '6': '.protocol.AssetIssueContract', '10': 'AssetInfo'},
  ],
};

/// Descriptor for `ProtoCompleteTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoCompleteTransactionDescriptor = $convert.base64Decode('ChhQcm90b0NvbXBsZXRlVHJhbnNhY3Rpb24SIAoLQmxvY2tOdW1iZXIYASABKARSC0Jsb2NrTnVtYmVyEhwKCUJsb2NrVGltZRgCIAEoBFIJQmxvY2tUaW1lEi4KAlR4GAMgASgLMh4ucHJvdG9jb2wuVHJhbnNhY3Rpb25FeHRlbnRpb25SAlR4Ei0KBEluZm8YBCABKAsyGS5wcm90b2NvbC5UcmFuc2FjdGlvbkluZm9SBEluZm8SNgoMRXhjaGFuZ2VJbmZvGAUgASgLMhIucHJvdG9jb2wuRXhjaGFuZ2VSDEV4Y2hhbmdlSW5mbxI6CglBc3NldEluZm8YBiABKAsyHC5wcm90b2NvbC5Bc3NldElzc3VlQ29udHJhY3RSCUFzc2V0SW5mbw==');
