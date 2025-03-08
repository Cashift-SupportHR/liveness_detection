import 'dart:async';
import 'package:shiftapp/presentation/shared/loans/data/models/index_loan.dart';

import 'package:injectable/injectable.dart';
import '../data_sources/chashift_lons_provider.dart';



@injectable
class ChashiftLonsRepository {
  final ChashiftLonsAPI _api;

  ChashiftLonsRepository(this._api);

  Future<TabsAndTotalLoansDto> fetchTabsAndTotalLoans(bool isAdmin) async {
    final response = await _api.fetchTabsAndTotalLoans(isAdmin);
    return response.payload!;
  }

  Future<List<LoanDataDto>> fetchLoans({required bool isAdmin, required int status}) async {
    final response = await _api.fetchLoans(isAdmin, status);
    return response.payload!;
  }
}
