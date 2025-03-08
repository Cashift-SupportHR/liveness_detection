import 'dart:async';

import 'package:injectable/injectable.dart';
import '../data_sources/admin_wallet_provider.dart';
import '../models/index.dart';

@injectable
class AdminWalletRepository {
  final AdminWalletAPI _api;

  AdminWalletRepository(this._api);

  Future<WalletBalanceDto> fetchWalletBalance() async {
    final response = await _api.fetchWalletBalance();
    return response.payload!;
  }

  Future<AdminWalletDto> fetchAdminWalletData({required AdminWalletPrams params}) async {
    final response = await _api.fetchAdminWalletData(params);
    return response.payload!;
  }

  Future<FilterAndTapDto> fetchTabAndFilter() async {
    final response = await _api.fetchTabAndFilter();
    return response.payload!;
  }
}
