
import 'package:injectable/injectable.dart';
import 'package:shiftapp/data/models/api_response.dart';
import 'package:shiftapp/data/models/evulation/index.dart';
import 'package:shiftapp/domain/entities/evulation/index.dart';

 import '../../../../../network/source/user_endpoint.dart';

@Injectable()
class EvaluationApi {
  final UserEndpoint api;
  EvaluationApi(this.api);

  Future<ApiResponse<List<EvaluationItem>>> fetchEvaluationItems( int transactionId)  {
    return api.fetchEvaluationItems(transactionId);
  }

  Future<ApiResponse<bool>> saveEvaluations(EvulationParamsDto evaluations ,int transactionId)  {
    return api.saveEvaluations(evaluations,transactionId);
  }

}
