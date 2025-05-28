
 import 'package:injectable/injectable.dart';

import '../../../../../network/source/user_endpoint.dart';


@Injectable()
class TransactionsAPI {
  final UserEndpoint api;

  TransactionsAPI(this.api);

  // Future<ApiResponse<VehicleDetailsDto>> fetchVehicleByCode(String code) async {
  //   return await api.fetchVehicleByCode(code);
  // }

}
