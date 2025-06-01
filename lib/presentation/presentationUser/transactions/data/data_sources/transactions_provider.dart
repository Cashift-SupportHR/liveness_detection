import 'package:injectable/injectable.dart';

import '../../../../../data/models/api_response.dart';
import '../../../../../network/source/user_endpoint.dart';
import '../models/add_transactions_prams.dart';
import '../models/reschedule_transactions_prams.dart';
import '../models/transactions_dto.dart';
import '../models/update_transactions_prams.dart';

@Injectable()
class TransactionsAPI {
  final UserEndpoint api;

  TransactionsAPI(this.api);

  Future<ApiResponse<List<TransactionsDto>>> fetchTransactions(
      TransactionsPrams prams,
  ) async {
    return await api.fetchTransactions(prams);
  }

  Future<ApiResponse> addTransactions(AddTransactionsPrams prams) async {
    return await api.addTransactions(prams);
  }

  Future<ApiResponse> updateTransactions(UpdateTransactionsPrams prams) async {
    return await api.updateTransactions(prams);
  }

  Future<ApiResponse> rescheduleTransactions(
    RescheduleTransactionsPrams prams,
  ) async {
    return await api.rescheduleTransactions(prams);
  }
}
