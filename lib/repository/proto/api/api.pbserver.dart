///
//  Generated code. Do not modify.
//  source: api/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import '../core/Tron.pb.dart' as $0;
import '../core/contract/balance_contract.pb.dart' as $3;
import 'api.pb.dart' as $12;
import '../core/contract/account_contract.pb.dart' as $4;
import '../core/contract/witness_contract.pb.dart' as $5;
import '../core/contract/smart_contract.pb.dart' as $6;
import '../core/contract/asset_issue_contract.pb.dart' as $1;
import '../core/contract/proposal_contract.pb.dart' as $7;
import '../core/contract/storage_contract.pb.dart' as $8;
import '../core/contract/exchange_contract.pb.dart' as $9;
import '../core/contract/market_contract.pb.dart' as $10;
import '../core/contract/shield_contract.pb.dart' as $2;
import 'api.pbjson.dart';

export 'api.pb.dart';

abstract class WalletServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Account> getAccount($pb.ServerContext ctx, $0.Account request);
  $async.Future<$0.Account> getAccountById($pb.ServerContext ctx, $0.Account request);
  $async.Future<$3.AccountBalanceResponse> getAccountBalance($pb.ServerContext ctx, $3.AccountBalanceRequest request);
  $async.Future<$3.BlockBalanceTrace> getBlockBalanceTrace($pb.ServerContext ctx, $3.BlockBalanceTrace_BlockIdentifier request);
  $async.Future<$0.Transaction> createTransaction($pb.ServerContext ctx, $3.TransferContract request);
  $async.Future<$12.TransactionExtention> createTransaction2($pb.ServerContext ctx, $3.TransferContract request);
  $async.Future<$12.Return> broadcastTransaction($pb.ServerContext ctx, $0.Transaction request);
  $async.Future<$0.Transaction> updateAccount($pb.ServerContext ctx, $4.AccountUpdateContract request);
  $async.Future<$0.Transaction> setAccountId($pb.ServerContext ctx, $4.SetAccountIdContract request);
  $async.Future<$12.TransactionExtention> updateAccount2($pb.ServerContext ctx, $4.AccountUpdateContract request);
  $async.Future<$0.Transaction> voteWitnessAccount($pb.ServerContext ctx, $5.VoteWitnessContract request);
  $async.Future<$12.TransactionExtention> updateSetting($pb.ServerContext ctx, $6.UpdateSettingContract request);
  $async.Future<$12.TransactionExtention> updateEnergyLimit($pb.ServerContext ctx, $6.UpdateEnergyLimitContract request);
  $async.Future<$12.TransactionExtention> voteWitnessAccount2($pb.ServerContext ctx, $5.VoteWitnessContract request);
  $async.Future<$0.Transaction> createAssetIssue($pb.ServerContext ctx, $1.AssetIssueContract request);
  $async.Future<$12.TransactionExtention> createAssetIssue2($pb.ServerContext ctx, $1.AssetIssueContract request);
  $async.Future<$0.Transaction> updateWitness($pb.ServerContext ctx, $5.WitnessUpdateContract request);
  $async.Future<$12.TransactionExtention> updateWitness2($pb.ServerContext ctx, $5.WitnessUpdateContract request);
  $async.Future<$0.Transaction> createAccount($pb.ServerContext ctx, $4.AccountCreateContract request);
  $async.Future<$12.TransactionExtention> createAccount2($pb.ServerContext ctx, $4.AccountCreateContract request);
  $async.Future<$0.Transaction> createWitness($pb.ServerContext ctx, $5.WitnessCreateContract request);
  $async.Future<$12.TransactionExtention> createWitness2($pb.ServerContext ctx, $5.WitnessCreateContract request);
  $async.Future<$0.Transaction> transferAsset($pb.ServerContext ctx, $1.TransferAssetContract request);
  $async.Future<$12.TransactionExtention> transferAsset2($pb.ServerContext ctx, $1.TransferAssetContract request);
  $async.Future<$0.Transaction> participateAssetIssue($pb.ServerContext ctx, $1.ParticipateAssetIssueContract request);
  $async.Future<$12.TransactionExtention> participateAssetIssue2($pb.ServerContext ctx, $1.ParticipateAssetIssueContract request);
  $async.Future<$0.Transaction> freezeBalance($pb.ServerContext ctx, $3.FreezeBalanceContract request);
  $async.Future<$12.TransactionExtention> freezeBalance2($pb.ServerContext ctx, $3.FreezeBalanceContract request);
  $async.Future<$0.Transaction> unfreezeBalance($pb.ServerContext ctx, $3.UnfreezeBalanceContract request);
  $async.Future<$12.TransactionExtention> unfreezeBalance2($pb.ServerContext ctx, $3.UnfreezeBalanceContract request);
  $async.Future<$0.Transaction> unfreezeAsset($pb.ServerContext ctx, $1.UnfreezeAssetContract request);
  $async.Future<$12.TransactionExtention> unfreezeAsset2($pb.ServerContext ctx, $1.UnfreezeAssetContract request);
  $async.Future<$0.Transaction> withdrawBalance($pb.ServerContext ctx, $3.WithdrawBalanceContract request);
  $async.Future<$12.TransactionExtention> withdrawBalance2($pb.ServerContext ctx, $3.WithdrawBalanceContract request);
  $async.Future<$0.Transaction> updateAsset($pb.ServerContext ctx, $1.UpdateAssetContract request);
  $async.Future<$12.TransactionExtention> updateAsset2($pb.ServerContext ctx, $1.UpdateAssetContract request);
  $async.Future<$12.TransactionExtention> proposalCreate($pb.ServerContext ctx, $7.ProposalCreateContract request);
  $async.Future<$12.TransactionExtention> proposalApprove($pb.ServerContext ctx, $7.ProposalApproveContract request);
  $async.Future<$12.TransactionExtention> proposalDelete($pb.ServerContext ctx, $7.ProposalDeleteContract request);
  $async.Future<$12.TransactionExtention> buyStorage($pb.ServerContext ctx, $8.BuyStorageContract request);
  $async.Future<$12.TransactionExtention> buyStorageBytes($pb.ServerContext ctx, $8.BuyStorageBytesContract request);
  $async.Future<$12.TransactionExtention> sellStorage($pb.ServerContext ctx, $8.SellStorageContract request);
  $async.Future<$12.TransactionExtention> exchangeCreate($pb.ServerContext ctx, $9.ExchangeCreateContract request);
  $async.Future<$12.TransactionExtention> exchangeInject($pb.ServerContext ctx, $9.ExchangeInjectContract request);
  $async.Future<$12.TransactionExtention> exchangeWithdraw($pb.ServerContext ctx, $9.ExchangeWithdrawContract request);
  $async.Future<$12.TransactionExtention> exchangeTransaction($pb.ServerContext ctx, $9.ExchangeTransactionContract request);
  $async.Future<$12.TransactionExtention> marketSellAsset($pb.ServerContext ctx, $10.MarketSellAssetContract request);
  $async.Future<$12.TransactionExtention> marketCancelOrder($pb.ServerContext ctx, $10.MarketCancelOrderContract request);
  $async.Future<$0.MarketOrder> getMarketOrderById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.MarketOrderList> getMarketOrderByAccount($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.MarketPriceList> getMarketPriceByPair($pb.ServerContext ctx, $0.MarketOrderPair request);
  $async.Future<$0.MarketOrderList> getMarketOrderListByPair($pb.ServerContext ctx, $0.MarketOrderPair request);
  $async.Future<$0.MarketOrderPairList> getMarketPairList($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.NodeList> listNodes($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.AssetIssueList> getAssetIssueByAccount($pb.ServerContext ctx, $0.Account request);
  $async.Future<$12.AccountNetMessage> getAccountNet($pb.ServerContext ctx, $0.Account request);
  $async.Future<$12.AccountResourceMessage> getAccountResource($pb.ServerContext ctx, $0.Account request);
  $async.Future<$1.AssetIssueContract> getAssetIssueByName($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.AssetIssueList> getAssetIssueListByName($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$1.AssetIssueContract> getAssetIssueById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.Block> getNowBlock($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.BlockExtention> getNowBlock2($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.Block> getBlockByNum($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$12.BlockExtention> getBlockByNum2($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$12.NumberMessage> getTransactionCountByBlockNum($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$0.Block> getBlockById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.BlockList> getBlockByLimitNext($pb.ServerContext ctx, $12.BlockLimit request);
  $async.Future<$12.BlockListExtention> getBlockByLimitNext2($pb.ServerContext ctx, $12.BlockLimit request);
  $async.Future<$12.BlockList> getBlockByLatestNum($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$12.BlockListExtention> getBlockByLatestNum2($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$0.Transaction> getTransactionById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.TransactionExtention> deployContract($pb.ServerContext ctx, $6.CreateSmartContract request);
  $async.Future<$6.SmartContract> getContract($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$6.SmartContractDataWrapper> getContractInfo($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.TransactionExtention> triggerContract($pb.ServerContext ctx, $6.TriggerSmartContract request);
  $async.Future<$12.TransactionExtention> triggerConstantContract($pb.ServerContext ctx, $6.TriggerSmartContract request);
  $async.Future<$12.TransactionExtention> clearContractABI($pb.ServerContext ctx, $6.ClearABIContract request);
  $async.Future<$12.WitnessList> listWitnesses($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.DelegatedResourceList> getDelegatedResource($pb.ServerContext ctx, $12.DelegatedResourceMessage request);
  $async.Future<$0.DelegatedResourceAccountIndex> getDelegatedResourceAccountIndex($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.ProposalList> listProposals($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.ProposalList> getPaginatedProposalList($pb.ServerContext ctx, $12.PaginatedMessage request);
  $async.Future<$0.Proposal> getProposalById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.ExchangeList> listExchanges($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.ExchangeList> getPaginatedExchangeList($pb.ServerContext ctx, $12.PaginatedMessage request);
  $async.Future<$0.Exchange> getExchangeById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.ChainParameters> getChainParameters($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.AssetIssueList> getAssetIssueList($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.AssetIssueList> getPaginatedAssetIssueList($pb.ServerContext ctx, $12.PaginatedMessage request);
  $async.Future<$12.NumberMessage> totalTransaction($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.NumberMessage> getNextMaintenanceTime($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.Transaction> getTransactionSign($pb.ServerContext ctx, $0.TransactionSign request);
  $async.Future<$12.TransactionExtention> getTransactionSign2($pb.ServerContext ctx, $0.TransactionSign request);
  $async.Future<$12.BytesMessage> createAddress($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.EasyTransferResponse> easyTransferAsset($pb.ServerContext ctx, $12.EasyTransferAssetMessage request);
  $async.Future<$12.EasyTransferResponse> easyTransferAssetByPrivate($pb.ServerContext ctx, $12.EasyTransferAssetByPrivateMessage request);
  $async.Future<$12.EasyTransferResponse> easyTransfer($pb.ServerContext ctx, $12.EasyTransferMessage request);
  $async.Future<$12.EasyTransferResponse> easyTransferByPrivate($pb.ServerContext ctx, $12.EasyTransferByPrivateMessage request);
  $async.Future<$12.AddressPrKeyPairMessage> generateAddress($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.TransactionInfo> getTransactionInfoById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.TransactionExtention> accountPermissionUpdate($pb.ServerContext ctx, $4.AccountPermissionUpdateContract request);
  $async.Future<$12.TransactionExtention> addSign($pb.ServerContext ctx, $0.TransactionSign request);
  $async.Future<$12.TransactionSignWeight> getTransactionSignWeight($pb.ServerContext ctx, $0.Transaction request);
  $async.Future<$12.TransactionApprovedList> getTransactionApprovedList($pb.ServerContext ctx, $0.Transaction request);
  $async.Future<$0.NodeInfo> getNodeInfo($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.NumberMessage> getRewardInfo($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.NumberMessage> getBrokerageInfo($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.TransactionExtention> updateBrokerage($pb.ServerContext ctx, $8.UpdateBrokerageContract request);
  $async.Future<$12.TransactionExtention> createShieldedTransaction($pb.ServerContext ctx, $12.PrivateParameters request);
  $async.Future<$2.IncrementalMerkleVoucherInfo> getMerkleTreeVoucherInfo($pb.ServerContext ctx, $2.OutputPointInfo request);
  $async.Future<$12.DecryptNotes> scanNoteByIvk($pb.ServerContext ctx, $12.IvkDecryptParameters request);
  $async.Future<$12.DecryptNotesMarked> scanAndMarkNoteByIvk($pb.ServerContext ctx, $12.IvkDecryptAndMarkParameters request);
  $async.Future<$12.DecryptNotes> scanNoteByOvk($pb.ServerContext ctx, $12.OvkDecryptParameters request);
  $async.Future<$12.BytesMessage> getSpendingKey($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.ExpandedSpendingKeyMessage> getExpandedSpendingKey($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.BytesMessage> getAkFromAsk($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.BytesMessage> getNkFromNsk($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.IncomingViewingKeyMessage> getIncomingViewingKey($pb.ServerContext ctx, $12.ViewingKeyMessage request);
  $async.Future<$12.DiversifierMessage> getDiversifier($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.ShieldedAddressInfo> getNewShieldedAddress($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.PaymentAddressMessage> getZenPaymentAddress($pb.ServerContext ctx, $12.IncomingViewingKeyDiversifierMessage request);
  $async.Future<$12.BytesMessage> getRcm($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.SpendResult> isSpend($pb.ServerContext ctx, $12.NoteParameters request);
  $async.Future<$12.TransactionExtention> createShieldedTransactionWithoutSpendAuthSig($pb.ServerContext ctx, $12.PrivateParametersWithoutAsk request);
  $async.Future<$12.BytesMessage> getShieldTransactionHash($pb.ServerContext ctx, $0.Transaction request);
  $async.Future<$12.BytesMessage> createSpendAuthSig($pb.ServerContext ctx, $12.SpendAuthSigParameters request);
  $async.Future<$12.BytesMessage> createShieldNullifier($pb.ServerContext ctx, $12.NfParameters request);
  $async.Future<$12.ShieldedTRC20Parameters> createShieldedContractParameters($pb.ServerContext ctx, $12.PrivateShieldedTRC20Parameters request);
  $async.Future<$12.ShieldedTRC20Parameters> createShieldedContractParametersWithoutAsk($pb.ServerContext ctx, $12.PrivateShieldedTRC20ParametersWithoutAsk request);
  $async.Future<$12.DecryptNotesTRC20> scanShieldedTRC20NotesByIvk($pb.ServerContext ctx, $12.IvkDecryptTRC20Parameters request);
  $async.Future<$12.DecryptNotesTRC20> scanShieldedTRC20NotesByOvk($pb.ServerContext ctx, $12.OvkDecryptTRC20Parameters request);
  $async.Future<$12.NullifierResult> isShieldedTRC20ContractNoteSpent($pb.ServerContext ctx, $12.NfTRC20Parameters request);
  $async.Future<$12.BytesMessage> getTriggerInputForShieldedTRC20Contract($pb.ServerContext ctx, $12.ShieldedTRC20TriggerContractParameters request);
  $async.Future<$12.TransactionExtention> createCommonTransaction($pb.ServerContext ctx, $0.Transaction request);
  $async.Future<$12.TransactionInfoList> getTransactionInfoByBlockNum($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$12.NumberMessage> getBurnTrx($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.Transaction> getTransactionFromPending($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.TransactionIdList> getTransactionListFromPending($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.NumberMessage> getPendingSize($pb.ServerContext ctx, $12.EmptyMessage request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetAccount': return $0.Account();
      case 'GetAccountById': return $0.Account();
      case 'GetAccountBalance': return $3.AccountBalanceRequest();
      case 'GetBlockBalanceTrace': return $3.BlockBalanceTrace_BlockIdentifier();
      case 'CreateTransaction': return $3.TransferContract();
      case 'CreateTransaction2': return $3.TransferContract();
      case 'BroadcastTransaction': return $0.Transaction();
      case 'UpdateAccount': return $4.AccountUpdateContract();
      case 'SetAccountId': return $4.SetAccountIdContract();
      case 'UpdateAccount2': return $4.AccountUpdateContract();
      case 'VoteWitnessAccount': return $5.VoteWitnessContract();
      case 'UpdateSetting': return $6.UpdateSettingContract();
      case 'UpdateEnergyLimit': return $6.UpdateEnergyLimitContract();
      case 'VoteWitnessAccount2': return $5.VoteWitnessContract();
      case 'CreateAssetIssue': return $1.AssetIssueContract();
      case 'CreateAssetIssue2': return $1.AssetIssueContract();
      case 'UpdateWitness': return $5.WitnessUpdateContract();
      case 'UpdateWitness2': return $5.WitnessUpdateContract();
      case 'CreateAccount': return $4.AccountCreateContract();
      case 'CreateAccount2': return $4.AccountCreateContract();
      case 'CreateWitness': return $5.WitnessCreateContract();
      case 'CreateWitness2': return $5.WitnessCreateContract();
      case 'TransferAsset': return $1.TransferAssetContract();
      case 'TransferAsset2': return $1.TransferAssetContract();
      case 'ParticipateAssetIssue': return $1.ParticipateAssetIssueContract();
      case 'ParticipateAssetIssue2': return $1.ParticipateAssetIssueContract();
      case 'FreezeBalance': return $3.FreezeBalanceContract();
      case 'FreezeBalance2': return $3.FreezeBalanceContract();
      case 'UnfreezeBalance': return $3.UnfreezeBalanceContract();
      case 'UnfreezeBalance2': return $3.UnfreezeBalanceContract();
      case 'UnfreezeAsset': return $1.UnfreezeAssetContract();
      case 'UnfreezeAsset2': return $1.UnfreezeAssetContract();
      case 'WithdrawBalance': return $3.WithdrawBalanceContract();
      case 'WithdrawBalance2': return $3.WithdrawBalanceContract();
      case 'UpdateAsset': return $1.UpdateAssetContract();
      case 'UpdateAsset2': return $1.UpdateAssetContract();
      case 'ProposalCreate': return $7.ProposalCreateContract();
      case 'ProposalApprove': return $7.ProposalApproveContract();
      case 'ProposalDelete': return $7.ProposalDeleteContract();
      case 'BuyStorage': return $8.BuyStorageContract();
      case 'BuyStorageBytes': return $8.BuyStorageBytesContract();
      case 'SellStorage': return $8.SellStorageContract();
      case 'ExchangeCreate': return $9.ExchangeCreateContract();
      case 'ExchangeInject': return $9.ExchangeInjectContract();
      case 'ExchangeWithdraw': return $9.ExchangeWithdrawContract();
      case 'ExchangeTransaction': return $9.ExchangeTransactionContract();
      case 'MarketSellAsset': return $10.MarketSellAssetContract();
      case 'MarketCancelOrder': return $10.MarketCancelOrderContract();
      case 'GetMarketOrderById': return $12.BytesMessage();
      case 'GetMarketOrderByAccount': return $12.BytesMessage();
      case 'GetMarketPriceByPair': return $0.MarketOrderPair();
      case 'GetMarketOrderListByPair': return $0.MarketOrderPair();
      case 'GetMarketPairList': return $12.EmptyMessage();
      case 'ListNodes': return $12.EmptyMessage();
      case 'GetAssetIssueByAccount': return $0.Account();
      case 'GetAccountNet': return $0.Account();
      case 'GetAccountResource': return $0.Account();
      case 'GetAssetIssueByName': return $12.BytesMessage();
      case 'GetAssetIssueListByName': return $12.BytesMessage();
      case 'GetAssetIssueById': return $12.BytesMessage();
      case 'GetNowBlock': return $12.EmptyMessage();
      case 'GetNowBlock2': return $12.EmptyMessage();
      case 'GetBlockByNum': return $12.NumberMessage();
      case 'GetBlockByNum2': return $12.NumberMessage();
      case 'GetTransactionCountByBlockNum': return $12.NumberMessage();
      case 'GetBlockById': return $12.BytesMessage();
      case 'GetBlockByLimitNext': return $12.BlockLimit();
      case 'GetBlockByLimitNext2': return $12.BlockLimit();
      case 'GetBlockByLatestNum': return $12.NumberMessage();
      case 'GetBlockByLatestNum2': return $12.NumberMessage();
      case 'GetTransactionById': return $12.BytesMessage();
      case 'DeployContract': return $6.CreateSmartContract();
      case 'GetContract': return $12.BytesMessage();
      case 'GetContractInfo': return $12.BytesMessage();
      case 'TriggerContract': return $6.TriggerSmartContract();
      case 'TriggerConstantContract': return $6.TriggerSmartContract();
      case 'ClearContractABI': return $6.ClearABIContract();
      case 'ListWitnesses': return $12.EmptyMessage();
      case 'GetDelegatedResource': return $12.DelegatedResourceMessage();
      case 'GetDelegatedResourceAccountIndex': return $12.BytesMessage();
      case 'ListProposals': return $12.EmptyMessage();
      case 'GetPaginatedProposalList': return $12.PaginatedMessage();
      case 'GetProposalById': return $12.BytesMessage();
      case 'ListExchanges': return $12.EmptyMessage();
      case 'GetPaginatedExchangeList': return $12.PaginatedMessage();
      case 'GetExchangeById': return $12.BytesMessage();
      case 'GetChainParameters': return $12.EmptyMessage();
      case 'GetAssetIssueList': return $12.EmptyMessage();
      case 'GetPaginatedAssetIssueList': return $12.PaginatedMessage();
      case 'TotalTransaction': return $12.EmptyMessage();
      case 'GetNextMaintenanceTime': return $12.EmptyMessage();
      case 'GetTransactionSign': return $0.TransactionSign();
      case 'GetTransactionSign2': return $0.TransactionSign();
      case 'CreateAddress': return $12.BytesMessage();
      case 'EasyTransferAsset': return $12.EasyTransferAssetMessage();
      case 'EasyTransferAssetByPrivate': return $12.EasyTransferAssetByPrivateMessage();
      case 'EasyTransfer': return $12.EasyTransferMessage();
      case 'EasyTransferByPrivate': return $12.EasyTransferByPrivateMessage();
      case 'GenerateAddress': return $12.EmptyMessage();
      case 'GetTransactionInfoById': return $12.BytesMessage();
      case 'AccountPermissionUpdate': return $4.AccountPermissionUpdateContract();
      case 'AddSign': return $0.TransactionSign();
      case 'GetTransactionSignWeight': return $0.Transaction();
      case 'GetTransactionApprovedList': return $0.Transaction();
      case 'GetNodeInfo': return $12.EmptyMessage();
      case 'GetRewardInfo': return $12.BytesMessage();
      case 'GetBrokerageInfo': return $12.BytesMessage();
      case 'UpdateBrokerage': return $8.UpdateBrokerageContract();
      case 'CreateShieldedTransaction': return $12.PrivateParameters();
      case 'GetMerkleTreeVoucherInfo': return $2.OutputPointInfo();
      case 'ScanNoteByIvk': return $12.IvkDecryptParameters();
      case 'ScanAndMarkNoteByIvk': return $12.IvkDecryptAndMarkParameters();
      case 'ScanNoteByOvk': return $12.OvkDecryptParameters();
      case 'GetSpendingKey': return $12.EmptyMessage();
      case 'GetExpandedSpendingKey': return $12.BytesMessage();
      case 'GetAkFromAsk': return $12.BytesMessage();
      case 'GetNkFromNsk': return $12.BytesMessage();
      case 'GetIncomingViewingKey': return $12.ViewingKeyMessage();
      case 'GetDiversifier': return $12.EmptyMessage();
      case 'GetNewShieldedAddress': return $12.EmptyMessage();
      case 'GetZenPaymentAddress': return $12.IncomingViewingKeyDiversifierMessage();
      case 'GetRcm': return $12.EmptyMessage();
      case 'IsSpend': return $12.NoteParameters();
      case 'CreateShieldedTransactionWithoutSpendAuthSig': return $12.PrivateParametersWithoutAsk();
      case 'GetShieldTransactionHash': return $0.Transaction();
      case 'CreateSpendAuthSig': return $12.SpendAuthSigParameters();
      case 'CreateShieldNullifier': return $12.NfParameters();
      case 'CreateShieldedContractParameters': return $12.PrivateShieldedTRC20Parameters();
      case 'CreateShieldedContractParametersWithoutAsk': return $12.PrivateShieldedTRC20ParametersWithoutAsk();
      case 'ScanShieldedTRC20NotesByIvk': return $12.IvkDecryptTRC20Parameters();
      case 'ScanShieldedTRC20NotesByOvk': return $12.OvkDecryptTRC20Parameters();
      case 'IsShieldedTRC20ContractNoteSpent': return $12.NfTRC20Parameters();
      case 'GetTriggerInputForShieldedTRC20Contract': return $12.ShieldedTRC20TriggerContractParameters();
      case 'CreateCommonTransaction': return $0.Transaction();
      case 'GetTransactionInfoByBlockNum': return $12.NumberMessage();
      case 'GetBurnTrx': return $12.EmptyMessage();
      case 'GetTransactionFromPending': return $12.BytesMessage();
      case 'GetTransactionListFromPending': return $12.EmptyMessage();
      case 'GetPendingSize': return $12.EmptyMessage();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetAccount': return this.getAccount(ctx, request as $0.Account);
      case 'GetAccountById': return this.getAccountById(ctx, request as $0.Account);
      case 'GetAccountBalance': return this.getAccountBalance(ctx, request as $3.AccountBalanceRequest);
      case 'GetBlockBalanceTrace': return this.getBlockBalanceTrace(ctx, request as $3.BlockBalanceTrace_BlockIdentifier);
      case 'CreateTransaction': return this.createTransaction(ctx, request as $3.TransferContract);
      case 'CreateTransaction2': return this.createTransaction2(ctx, request as $3.TransferContract);
      case 'BroadcastTransaction': return this.broadcastTransaction(ctx, request as $0.Transaction);
      case 'UpdateAccount': return this.updateAccount(ctx, request as $4.AccountUpdateContract);
      case 'SetAccountId': return this.setAccountId(ctx, request as $4.SetAccountIdContract);
      case 'UpdateAccount2': return this.updateAccount2(ctx, request as $4.AccountUpdateContract);
      case 'VoteWitnessAccount': return this.voteWitnessAccount(ctx, request as $5.VoteWitnessContract);
      case 'UpdateSetting': return this.updateSetting(ctx, request as $6.UpdateSettingContract);
      case 'UpdateEnergyLimit': return this.updateEnergyLimit(ctx, request as $6.UpdateEnergyLimitContract);
      case 'VoteWitnessAccount2': return this.voteWitnessAccount2(ctx, request as $5.VoteWitnessContract);
      case 'CreateAssetIssue': return this.createAssetIssue(ctx, request as $1.AssetIssueContract);
      case 'CreateAssetIssue2': return this.createAssetIssue2(ctx, request as $1.AssetIssueContract);
      case 'UpdateWitness': return this.updateWitness(ctx, request as $5.WitnessUpdateContract);
      case 'UpdateWitness2': return this.updateWitness2(ctx, request as $5.WitnessUpdateContract);
      case 'CreateAccount': return this.createAccount(ctx, request as $4.AccountCreateContract);
      case 'CreateAccount2': return this.createAccount2(ctx, request as $4.AccountCreateContract);
      case 'CreateWitness': return this.createWitness(ctx, request as $5.WitnessCreateContract);
      case 'CreateWitness2': return this.createWitness2(ctx, request as $5.WitnessCreateContract);
      case 'TransferAsset': return this.transferAsset(ctx, request as $1.TransferAssetContract);
      case 'TransferAsset2': return this.transferAsset2(ctx, request as $1.TransferAssetContract);
      case 'ParticipateAssetIssue': return this.participateAssetIssue(ctx, request as $1.ParticipateAssetIssueContract);
      case 'ParticipateAssetIssue2': return this.participateAssetIssue2(ctx, request as $1.ParticipateAssetIssueContract);
      case 'FreezeBalance': return this.freezeBalance(ctx, request as $3.FreezeBalanceContract);
      case 'FreezeBalance2': return this.freezeBalance2(ctx, request as $3.FreezeBalanceContract);
      case 'UnfreezeBalance': return this.unfreezeBalance(ctx, request as $3.UnfreezeBalanceContract);
      case 'UnfreezeBalance2': return this.unfreezeBalance2(ctx, request as $3.UnfreezeBalanceContract);
      case 'UnfreezeAsset': return this.unfreezeAsset(ctx, request as $1.UnfreezeAssetContract);
      case 'UnfreezeAsset2': return this.unfreezeAsset2(ctx, request as $1.UnfreezeAssetContract);
      case 'WithdrawBalance': return this.withdrawBalance(ctx, request as $3.WithdrawBalanceContract);
      case 'WithdrawBalance2': return this.withdrawBalance2(ctx, request as $3.WithdrawBalanceContract);
      case 'UpdateAsset': return this.updateAsset(ctx, request as $1.UpdateAssetContract);
      case 'UpdateAsset2': return this.updateAsset2(ctx, request as $1.UpdateAssetContract);
      case 'ProposalCreate': return this.proposalCreate(ctx, request as $7.ProposalCreateContract);
      case 'ProposalApprove': return this.proposalApprove(ctx, request as $7.ProposalApproveContract);
      case 'ProposalDelete': return this.proposalDelete(ctx, request as $7.ProposalDeleteContract);
      case 'BuyStorage': return this.buyStorage(ctx, request as $8.BuyStorageContract);
      case 'BuyStorageBytes': return this.buyStorageBytes(ctx, request as $8.BuyStorageBytesContract);
      case 'SellStorage': return this.sellStorage(ctx, request as $8.SellStorageContract);
      case 'ExchangeCreate': return this.exchangeCreate(ctx, request as $9.ExchangeCreateContract);
      case 'ExchangeInject': return this.exchangeInject(ctx, request as $9.ExchangeInjectContract);
      case 'ExchangeWithdraw': return this.exchangeWithdraw(ctx, request as $9.ExchangeWithdrawContract);
      case 'ExchangeTransaction': return this.exchangeTransaction(ctx, request as $9.ExchangeTransactionContract);
      case 'MarketSellAsset': return this.marketSellAsset(ctx, request as $10.MarketSellAssetContract);
      case 'MarketCancelOrder': return this.marketCancelOrder(ctx, request as $10.MarketCancelOrderContract);
      case 'GetMarketOrderById': return this.getMarketOrderById(ctx, request as $12.BytesMessage);
      case 'GetMarketOrderByAccount': return this.getMarketOrderByAccount(ctx, request as $12.BytesMessage);
      case 'GetMarketPriceByPair': return this.getMarketPriceByPair(ctx, request as $0.MarketOrderPair);
      case 'GetMarketOrderListByPair': return this.getMarketOrderListByPair(ctx, request as $0.MarketOrderPair);
      case 'GetMarketPairList': return this.getMarketPairList(ctx, request as $12.EmptyMessage);
      case 'ListNodes': return this.listNodes(ctx, request as $12.EmptyMessage);
      case 'GetAssetIssueByAccount': return this.getAssetIssueByAccount(ctx, request as $0.Account);
      case 'GetAccountNet': return this.getAccountNet(ctx, request as $0.Account);
      case 'GetAccountResource': return this.getAccountResource(ctx, request as $0.Account);
      case 'GetAssetIssueByName': return this.getAssetIssueByName(ctx, request as $12.BytesMessage);
      case 'GetAssetIssueListByName': return this.getAssetIssueListByName(ctx, request as $12.BytesMessage);
      case 'GetAssetIssueById': return this.getAssetIssueById(ctx, request as $12.BytesMessage);
      case 'GetNowBlock': return this.getNowBlock(ctx, request as $12.EmptyMessage);
      case 'GetNowBlock2': return this.getNowBlock2(ctx, request as $12.EmptyMessage);
      case 'GetBlockByNum': return this.getBlockByNum(ctx, request as $12.NumberMessage);
      case 'GetBlockByNum2': return this.getBlockByNum2(ctx, request as $12.NumberMessage);
      case 'GetTransactionCountByBlockNum': return this.getTransactionCountByBlockNum(ctx, request as $12.NumberMessage);
      case 'GetBlockById': return this.getBlockById(ctx, request as $12.BytesMessage);
      case 'GetBlockByLimitNext': return this.getBlockByLimitNext(ctx, request as $12.BlockLimit);
      case 'GetBlockByLimitNext2': return this.getBlockByLimitNext2(ctx, request as $12.BlockLimit);
      case 'GetBlockByLatestNum': return this.getBlockByLatestNum(ctx, request as $12.NumberMessage);
      case 'GetBlockByLatestNum2': return this.getBlockByLatestNum2(ctx, request as $12.NumberMessage);
      case 'GetTransactionById': return this.getTransactionById(ctx, request as $12.BytesMessage);
      case 'DeployContract': return this.deployContract(ctx, request as $6.CreateSmartContract);
      case 'GetContract': return this.getContract(ctx, request as $12.BytesMessage);
      case 'GetContractInfo': return this.getContractInfo(ctx, request as $12.BytesMessage);
      case 'TriggerContract': return this.triggerContract(ctx, request as $6.TriggerSmartContract);
      case 'TriggerConstantContract': return this.triggerConstantContract(ctx, request as $6.TriggerSmartContract);
      case 'ClearContractABI': return this.clearContractABI(ctx, request as $6.ClearABIContract);
      case 'ListWitnesses': return this.listWitnesses(ctx, request as $12.EmptyMessage);
      case 'GetDelegatedResource': return this.getDelegatedResource(ctx, request as $12.DelegatedResourceMessage);
      case 'GetDelegatedResourceAccountIndex': return this.getDelegatedResourceAccountIndex(ctx, request as $12.BytesMessage);
      case 'ListProposals': return this.listProposals(ctx, request as $12.EmptyMessage);
      case 'GetPaginatedProposalList': return this.getPaginatedProposalList(ctx, request as $12.PaginatedMessage);
      case 'GetProposalById': return this.getProposalById(ctx, request as $12.BytesMessage);
      case 'ListExchanges': return this.listExchanges(ctx, request as $12.EmptyMessage);
      case 'GetPaginatedExchangeList': return this.getPaginatedExchangeList(ctx, request as $12.PaginatedMessage);
      case 'GetExchangeById': return this.getExchangeById(ctx, request as $12.BytesMessage);
      case 'GetChainParameters': return this.getChainParameters(ctx, request as $12.EmptyMessage);
      case 'GetAssetIssueList': return this.getAssetIssueList(ctx, request as $12.EmptyMessage);
      case 'GetPaginatedAssetIssueList': return this.getPaginatedAssetIssueList(ctx, request as $12.PaginatedMessage);
      case 'TotalTransaction': return this.totalTransaction(ctx, request as $12.EmptyMessage);
      case 'GetNextMaintenanceTime': return this.getNextMaintenanceTime(ctx, request as $12.EmptyMessage);
      case 'GetTransactionSign': return this.getTransactionSign(ctx, request as $0.TransactionSign);
      case 'GetTransactionSign2': return this.getTransactionSign2(ctx, request as $0.TransactionSign);
      case 'CreateAddress': return this.createAddress(ctx, request as $12.BytesMessage);
      case 'EasyTransferAsset': return this.easyTransferAsset(ctx, request as $12.EasyTransferAssetMessage);
      case 'EasyTransferAssetByPrivate': return this.easyTransferAssetByPrivate(ctx, request as $12.EasyTransferAssetByPrivateMessage);
      case 'EasyTransfer': return this.easyTransfer(ctx, request as $12.EasyTransferMessage);
      case 'EasyTransferByPrivate': return this.easyTransferByPrivate(ctx, request as $12.EasyTransferByPrivateMessage);
      case 'GenerateAddress': return this.generateAddress(ctx, request as $12.EmptyMessage);
      case 'GetTransactionInfoById': return this.getTransactionInfoById(ctx, request as $12.BytesMessage);
      case 'AccountPermissionUpdate': return this.accountPermissionUpdate(ctx, request as $4.AccountPermissionUpdateContract);
      case 'AddSign': return this.addSign(ctx, request as $0.TransactionSign);
      case 'GetTransactionSignWeight': return this.getTransactionSignWeight(ctx, request as $0.Transaction);
      case 'GetTransactionApprovedList': return this.getTransactionApprovedList(ctx, request as $0.Transaction);
      case 'GetNodeInfo': return this.getNodeInfo(ctx, request as $12.EmptyMessage);
      case 'GetRewardInfo': return this.getRewardInfo(ctx, request as $12.BytesMessage);
      case 'GetBrokerageInfo': return this.getBrokerageInfo(ctx, request as $12.BytesMessage);
      case 'UpdateBrokerage': return this.updateBrokerage(ctx, request as $8.UpdateBrokerageContract);
      case 'CreateShieldedTransaction': return this.createShieldedTransaction(ctx, request as $12.PrivateParameters);
      case 'GetMerkleTreeVoucherInfo': return this.getMerkleTreeVoucherInfo(ctx, request as $2.OutputPointInfo);
      case 'ScanNoteByIvk': return this.scanNoteByIvk(ctx, request as $12.IvkDecryptParameters);
      case 'ScanAndMarkNoteByIvk': return this.scanAndMarkNoteByIvk(ctx, request as $12.IvkDecryptAndMarkParameters);
      case 'ScanNoteByOvk': return this.scanNoteByOvk(ctx, request as $12.OvkDecryptParameters);
      case 'GetSpendingKey': return this.getSpendingKey(ctx, request as $12.EmptyMessage);
      case 'GetExpandedSpendingKey': return this.getExpandedSpendingKey(ctx, request as $12.BytesMessage);
      case 'GetAkFromAsk': return this.getAkFromAsk(ctx, request as $12.BytesMessage);
      case 'GetNkFromNsk': return this.getNkFromNsk(ctx, request as $12.BytesMessage);
      case 'GetIncomingViewingKey': return this.getIncomingViewingKey(ctx, request as $12.ViewingKeyMessage);
      case 'GetDiversifier': return this.getDiversifier(ctx, request as $12.EmptyMessage);
      case 'GetNewShieldedAddress': return this.getNewShieldedAddress(ctx, request as $12.EmptyMessage);
      case 'GetZenPaymentAddress': return this.getZenPaymentAddress(ctx, request as $12.IncomingViewingKeyDiversifierMessage);
      case 'GetRcm': return this.getRcm(ctx, request as $12.EmptyMessage);
      case 'IsSpend': return this.isSpend(ctx, request as $12.NoteParameters);
      case 'CreateShieldedTransactionWithoutSpendAuthSig': return this.createShieldedTransactionWithoutSpendAuthSig(ctx, request as $12.PrivateParametersWithoutAsk);
      case 'GetShieldTransactionHash': return this.getShieldTransactionHash(ctx, request as $0.Transaction);
      case 'CreateSpendAuthSig': return this.createSpendAuthSig(ctx, request as $12.SpendAuthSigParameters);
      case 'CreateShieldNullifier': return this.createShieldNullifier(ctx, request as $12.NfParameters);
      case 'CreateShieldedContractParameters': return this.createShieldedContractParameters(ctx, request as $12.PrivateShieldedTRC20Parameters);
      case 'CreateShieldedContractParametersWithoutAsk': return this.createShieldedContractParametersWithoutAsk(ctx, request as $12.PrivateShieldedTRC20ParametersWithoutAsk);
      case 'ScanShieldedTRC20NotesByIvk': return this.scanShieldedTRC20NotesByIvk(ctx, request as $12.IvkDecryptTRC20Parameters);
      case 'ScanShieldedTRC20NotesByOvk': return this.scanShieldedTRC20NotesByOvk(ctx, request as $12.OvkDecryptTRC20Parameters);
      case 'IsShieldedTRC20ContractNoteSpent': return this.isShieldedTRC20ContractNoteSpent(ctx, request as $12.NfTRC20Parameters);
      case 'GetTriggerInputForShieldedTRC20Contract': return this.getTriggerInputForShieldedTRC20Contract(ctx, request as $12.ShieldedTRC20TriggerContractParameters);
      case 'CreateCommonTransaction': return this.createCommonTransaction(ctx, request as $0.Transaction);
      case 'GetTransactionInfoByBlockNum': return this.getTransactionInfoByBlockNum(ctx, request as $12.NumberMessage);
      case 'GetBurnTrx': return this.getBurnTrx(ctx, request as $12.EmptyMessage);
      case 'GetTransactionFromPending': return this.getTransactionFromPending(ctx, request as $12.BytesMessage);
      case 'GetTransactionListFromPending': return this.getTransactionListFromPending(ctx, request as $12.EmptyMessage);
      case 'GetPendingSize': return this.getPendingSize(ctx, request as $12.EmptyMessage);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  //$core.Map<$core.String, $core.dynamic> get $json => WalletServiceBase$json;
  //$core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WalletServiceBase$messageJson;
}

abstract class WalletSolidityServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Account> getAccount($pb.ServerContext ctx, $0.Account request);
  $async.Future<$0.Account> getAccountById($pb.ServerContext ctx, $0.Account request);
  $async.Future<$12.WitnessList> listWitnesses($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.AssetIssueList> getAssetIssueList($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.AssetIssueList> getPaginatedAssetIssueList($pb.ServerContext ctx, $12.PaginatedMessage request);
  $async.Future<$1.AssetIssueContract> getAssetIssueByName($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.AssetIssueList> getAssetIssueListByName($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$1.AssetIssueContract> getAssetIssueById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.Block> getNowBlock($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.BlockExtention> getNowBlock2($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.Block> getBlockByNum($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$12.BlockExtention> getBlockByNum2($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$12.NumberMessage> getTransactionCountByBlockNum($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$12.DelegatedResourceList> getDelegatedResource($pb.ServerContext ctx, $12.DelegatedResourceMessage request);
  $async.Future<$0.DelegatedResourceAccountIndex> getDelegatedResourceAccountIndex($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.Exchange> getExchangeById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.ExchangeList> listExchanges($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.Transaction> getTransactionById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.TransactionInfo> getTransactionInfoById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.AddressPrKeyPairMessage> generateAddress($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$2.IncrementalMerkleVoucherInfo> getMerkleTreeVoucherInfo($pb.ServerContext ctx, $2.OutputPointInfo request);
  $async.Future<$12.DecryptNotes> scanNoteByIvk($pb.ServerContext ctx, $12.IvkDecryptParameters request);
  $async.Future<$12.DecryptNotesMarked> scanAndMarkNoteByIvk($pb.ServerContext ctx, $12.IvkDecryptAndMarkParameters request);
  $async.Future<$12.DecryptNotes> scanNoteByOvk($pb.ServerContext ctx, $12.OvkDecryptParameters request);
  $async.Future<$12.SpendResult> isSpend($pb.ServerContext ctx, $12.NoteParameters request);
  $async.Future<$12.DecryptNotesTRC20> scanShieldedTRC20NotesByIvk($pb.ServerContext ctx, $12.IvkDecryptTRC20Parameters request);
  $async.Future<$12.DecryptNotesTRC20> scanShieldedTRC20NotesByOvk($pb.ServerContext ctx, $12.OvkDecryptTRC20Parameters request);
  $async.Future<$12.NullifierResult> isShieldedTRC20ContractNoteSpent($pb.ServerContext ctx, $12.NfTRC20Parameters request);
  $async.Future<$12.NumberMessage> getRewardInfo($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.NumberMessage> getBrokerageInfo($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$12.TransactionExtention> triggerConstantContract($pb.ServerContext ctx, $6.TriggerSmartContract request);
  $async.Future<$12.TransactionInfoList> getTransactionInfoByBlockNum($pb.ServerContext ctx, $12.NumberMessage request);
  $async.Future<$0.MarketOrder> getMarketOrderById($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.MarketOrderList> getMarketOrderByAccount($pb.ServerContext ctx, $12.BytesMessage request);
  $async.Future<$0.MarketPriceList> getMarketPriceByPair($pb.ServerContext ctx, $0.MarketOrderPair request);
  $async.Future<$0.MarketOrderList> getMarketOrderListByPair($pb.ServerContext ctx, $0.MarketOrderPair request);
  $async.Future<$0.MarketOrderPairList> getMarketPairList($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$12.NumberMessage> getBurnTrx($pb.ServerContext ctx, $12.EmptyMessage request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetAccount': return $0.Account();
      case 'GetAccountById': return $0.Account();
      case 'ListWitnesses': return $12.EmptyMessage();
      case 'GetAssetIssueList': return $12.EmptyMessage();
      case 'GetPaginatedAssetIssueList': return $12.PaginatedMessage();
      case 'GetAssetIssueByName': return $12.BytesMessage();
      case 'GetAssetIssueListByName': return $12.BytesMessage();
      case 'GetAssetIssueById': return $12.BytesMessage();
      case 'GetNowBlock': return $12.EmptyMessage();
      case 'GetNowBlock2': return $12.EmptyMessage();
      case 'GetBlockByNum': return $12.NumberMessage();
      case 'GetBlockByNum2': return $12.NumberMessage();
      case 'GetTransactionCountByBlockNum': return $12.NumberMessage();
      case 'GetDelegatedResource': return $12.DelegatedResourceMessage();
      case 'GetDelegatedResourceAccountIndex': return $12.BytesMessage();
      case 'GetExchangeById': return $12.BytesMessage();
      case 'ListExchanges': return $12.EmptyMessage();
      case 'GetTransactionById': return $12.BytesMessage();
      case 'GetTransactionInfoById': return $12.BytesMessage();
      case 'GenerateAddress': return $12.EmptyMessage();
      case 'GetMerkleTreeVoucherInfo': return $2.OutputPointInfo();
      case 'ScanNoteByIvk': return $12.IvkDecryptParameters();
      case 'ScanAndMarkNoteByIvk': return $12.IvkDecryptAndMarkParameters();
      case 'ScanNoteByOvk': return $12.OvkDecryptParameters();
      case 'IsSpend': return $12.NoteParameters();
      case 'ScanShieldedTRC20NotesByIvk': return $12.IvkDecryptTRC20Parameters();
      case 'ScanShieldedTRC20NotesByOvk': return $12.OvkDecryptTRC20Parameters();
      case 'IsShieldedTRC20ContractNoteSpent': return $12.NfTRC20Parameters();
      case 'GetRewardInfo': return $12.BytesMessage();
      case 'GetBrokerageInfo': return $12.BytesMessage();
      case 'TriggerConstantContract': return $6.TriggerSmartContract();
      case 'GetTransactionInfoByBlockNum': return $12.NumberMessage();
      case 'GetMarketOrderById': return $12.BytesMessage();
      case 'GetMarketOrderByAccount': return $12.BytesMessage();
      case 'GetMarketPriceByPair': return $0.MarketOrderPair();
      case 'GetMarketOrderListByPair': return $0.MarketOrderPair();
      case 'GetMarketPairList': return $12.EmptyMessage();
      case 'GetBurnTrx': return $12.EmptyMessage();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetAccount': return this.getAccount(ctx, request as $0.Account);
      case 'GetAccountById': return this.getAccountById(ctx, request as $0.Account);
      case 'ListWitnesses': return this.listWitnesses(ctx, request as $12.EmptyMessage);
      case 'GetAssetIssueList': return this.getAssetIssueList(ctx, request as $12.EmptyMessage);
      case 'GetPaginatedAssetIssueList': return this.getPaginatedAssetIssueList(ctx, request as $12.PaginatedMessage);
      case 'GetAssetIssueByName': return this.getAssetIssueByName(ctx, request as $12.BytesMessage);
      case 'GetAssetIssueListByName': return this.getAssetIssueListByName(ctx, request as $12.BytesMessage);
      case 'GetAssetIssueById': return this.getAssetIssueById(ctx, request as $12.BytesMessage);
      case 'GetNowBlock': return this.getNowBlock(ctx, request as $12.EmptyMessage);
      case 'GetNowBlock2': return this.getNowBlock2(ctx, request as $12.EmptyMessage);
      case 'GetBlockByNum': return this.getBlockByNum(ctx, request as $12.NumberMessage);
      case 'GetBlockByNum2': return this.getBlockByNum2(ctx, request as $12.NumberMessage);
      case 'GetTransactionCountByBlockNum': return this.getTransactionCountByBlockNum(ctx, request as $12.NumberMessage);
      case 'GetDelegatedResource': return this.getDelegatedResource(ctx, request as $12.DelegatedResourceMessage);
      case 'GetDelegatedResourceAccountIndex': return this.getDelegatedResourceAccountIndex(ctx, request as $12.BytesMessage);
      case 'GetExchangeById': return this.getExchangeById(ctx, request as $12.BytesMessage);
      case 'ListExchanges': return this.listExchanges(ctx, request as $12.EmptyMessage);
      case 'GetTransactionById': return this.getTransactionById(ctx, request as $12.BytesMessage);
      case 'GetTransactionInfoById': return this.getTransactionInfoById(ctx, request as $12.BytesMessage);
      case 'GenerateAddress': return this.generateAddress(ctx, request as $12.EmptyMessage);
      case 'GetMerkleTreeVoucherInfo': return this.getMerkleTreeVoucherInfo(ctx, request as $2.OutputPointInfo);
      case 'ScanNoteByIvk': return this.scanNoteByIvk(ctx, request as $12.IvkDecryptParameters);
      case 'ScanAndMarkNoteByIvk': return this.scanAndMarkNoteByIvk(ctx, request as $12.IvkDecryptAndMarkParameters);
      case 'ScanNoteByOvk': return this.scanNoteByOvk(ctx, request as $12.OvkDecryptParameters);
      case 'IsSpend': return this.isSpend(ctx, request as $12.NoteParameters);
      case 'ScanShieldedTRC20NotesByIvk': return this.scanShieldedTRC20NotesByIvk(ctx, request as $12.IvkDecryptTRC20Parameters);
      case 'ScanShieldedTRC20NotesByOvk': return this.scanShieldedTRC20NotesByOvk(ctx, request as $12.OvkDecryptTRC20Parameters);
      case 'IsShieldedTRC20ContractNoteSpent': return this.isShieldedTRC20ContractNoteSpent(ctx, request as $12.NfTRC20Parameters);
      case 'GetRewardInfo': return this.getRewardInfo(ctx, request as $12.BytesMessage);
      case 'GetBrokerageInfo': return this.getBrokerageInfo(ctx, request as $12.BytesMessage);
      case 'TriggerConstantContract': return this.triggerConstantContract(ctx, request as $6.TriggerSmartContract);
      case 'GetTransactionInfoByBlockNum': return this.getTransactionInfoByBlockNum(ctx, request as $12.NumberMessage);
      case 'GetMarketOrderById': return this.getMarketOrderById(ctx, request as $12.BytesMessage);
      case 'GetMarketOrderByAccount': return this.getMarketOrderByAccount(ctx, request as $12.BytesMessage);
      case 'GetMarketPriceByPair': return this.getMarketPriceByPair(ctx, request as $0.MarketOrderPair);
      case 'GetMarketOrderListByPair': return this.getMarketOrderListByPair(ctx, request as $0.MarketOrderPair);
      case 'GetMarketPairList': return this.getMarketPairList(ctx, request as $12.EmptyMessage);
      case 'GetBurnTrx': return this.getBurnTrx(ctx, request as $12.EmptyMessage);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  //$core.Map<$core.String, $core.dynamic> get $json => WalletSolidityServiceBase$json;
  //$core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WalletSolidityServiceBase$messageJson;
}

abstract class WalletExtensionServiceBase extends $pb.GeneratedService {
  $async.Future<$12.TransactionList> getTransactionsFromThis($pb.ServerContext ctx, $12.AccountPaginated request);
  $async.Future<$12.TransactionListExtention> getTransactionsFromThis2($pb.ServerContext ctx, $12.AccountPaginated request);
  $async.Future<$12.TransactionList> getTransactionsToThis($pb.ServerContext ctx, $12.AccountPaginated request);
  $async.Future<$12.TransactionListExtention> getTransactionsToThis2($pb.ServerContext ctx, $12.AccountPaginated request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetTransactionsFromThis': return $12.AccountPaginated();
      case 'GetTransactionsFromThis2': return $12.AccountPaginated();
      case 'GetTransactionsToThis': return $12.AccountPaginated();
      case 'GetTransactionsToThis2': return $12.AccountPaginated();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetTransactionsFromThis': return this.getTransactionsFromThis(ctx, request as $12.AccountPaginated);
      case 'GetTransactionsFromThis2': return this.getTransactionsFromThis2(ctx, request as $12.AccountPaginated);
      case 'GetTransactionsToThis': return this.getTransactionsToThis(ctx, request as $12.AccountPaginated);
      case 'GetTransactionsToThis2': return this.getTransactionsToThis2(ctx, request as $12.AccountPaginated);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  //$core.Map<$core.String, $core.dynamic> get $json => WalletExtensionServiceBase$json;
  //$core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WalletExtensionServiceBase$messageJson;
}

abstract class DatabaseServiceBase extends $pb.GeneratedService {
  $async.Future<$12.BlockReference> getBlockReference($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.DynamicProperties> getDynamicProperties($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.Block> getNowBlock($pb.ServerContext ctx, $12.EmptyMessage request);
  $async.Future<$0.Block> getBlockByNum($pb.ServerContext ctx, $12.NumberMessage request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'getBlockReference': return $12.EmptyMessage();
      case 'GetDynamicProperties': return $12.EmptyMessage();
      case 'GetNowBlock': return $12.EmptyMessage();
      case 'GetBlockByNum': return $12.NumberMessage();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'getBlockReference': return this.getBlockReference(ctx, request as $12.EmptyMessage);
      case 'GetDynamicProperties': return this.getDynamicProperties(ctx, request as $12.EmptyMessage);
      case 'GetNowBlock': return this.getNowBlock(ctx, request as $12.EmptyMessage);
      case 'GetBlockByNum': return this.getBlockByNum(ctx, request as $12.NumberMessage);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  //$core.Map<$core.String, $core.dynamic> get $json => DatabaseServiceBase$json;
  //$core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => DatabaseServiceBase$messageJson;
}

abstract class MonitorServiceBase extends $pb.GeneratedService {
  $async.Future<$0.MetricsInfo> getStatsInfo($pb.ServerContext ctx, $12.EmptyMessage request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetStatsInfo': return $12.EmptyMessage();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetStatsInfo': return this.getStatsInfo(ctx, request as $12.EmptyMessage);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  //$core.Map<$core.String, $core.dynamic> get $json => MonitorServiceBase$json;
  //$core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => MonitorServiceBase$messageJson;
}

abstract class NetworkServiceBase extends $pb.GeneratedService {

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  //$core.Map<$core.String, $core.dynamic> get $json => NetworkServiceBase$json;
  //$core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => NetworkServiceBase$messageJson;
}

