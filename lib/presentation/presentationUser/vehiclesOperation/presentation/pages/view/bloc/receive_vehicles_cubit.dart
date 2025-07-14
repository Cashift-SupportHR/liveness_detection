import 'package:injectable/injectable.dart';

import '../../../../../../../../core/bloc/base_cubit.dart';
import '../../../../../common/common_state.dart';
import '../../../../data/models/receive_vehicle_prams.dart';
import '../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../domain/entities/receiveVehicle.dart';

@injectable
class ReceiveVehiclesCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;

  ReceiveVehiclesCubit(
    this._repository,
  );

  int _page = -1;
  List<ReceiveVehicleData> receiveVehicles = [];
  List<ReceiveVehicleData> allReceiveVehicle = [];
  ReceiveVehiclePrams params = ReceiveVehiclePrams(
      page: 1,
      projectId: 0,
      pageSize: 20,
      isComplete: true,
      companyId: 0,
      shiftId: 0);

  StreamStateInitial<List<ReceiveVehicleData>?> receiveVehiclesStream =
      StreamStateInitial();

  Future<List<ReceiveVehicleData>> fetchReceiveVehicleData(
      ReceiveVehiclePrams params) async {
    final result = await _repository.fetchReceiveVehicle(params);
    print(result);
    final data = ReceiveVehicle.fromDto(result);
    return data.receiveVehicleData ?? [];
  }

  Future<void> fetchReceiveVehiclePagination({
    bool isRefresh = false,
    required ReceiveVehiclePrams params,
  }) async {
    receiveVehicles = [];
    try {
      if (isRefresh) {
        receiveVehiclesStream.setData(null);
        _page = 0;
        allReceiveVehicle = [];
        params.page = _page;
      } else {
        _page++;
        params.page = _page;
      }

      receiveVehicles = await fetchReceiveVehicleData(params);
      allReceiveVehicle.addAll(receiveVehicles);
      receiveVehiclesStream.setData(allReceiveVehicle);
    } on Exception catch (e) {
      receiveVehiclesStream.setError(e);
    }
  }
}
