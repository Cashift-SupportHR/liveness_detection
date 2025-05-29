import 'package:injectable/injectable.dart';

import '../data_sources/transactions_provider.dart';

@injectable
class TransactionsRepository {
  final TransactionsAPI _api;

  TransactionsRepository(this._api);

  // Future<List<VehicleComponents>> fetchVehicleComponents() async {
  //   final response = await _api.fetchVehicleComponents();
  //   return VehicleComponents.fromDtoList(response.payload!);
  // }
}
