import 'package:injectable/injectable.dart';

import '../../../../../../core/bloc/base_cubit.dart';
import '../../../../../presentationUser/common/common_state.dart';
import '../../../../../presentationUser/common/stream_data_state.dart';
import '../../../../../shared/models/common_list_item.dart';
import '../../../data/models/add_vehicle_params.dart';
import '../../../data/repositories/vehicles_repository.dart';

@injectable
class VehiclePlateLicenseInfoCubit extends BaseCubit {
  final VehiclesRepository _repository;

  VehiclePlateLicenseInfoCubit(
      this._repository);

  StreamDataStateInitial<List<CommonListItem>?> projectsStream =
      StreamDataStateInitial<List<CommonListItem>?>();

  void fetchAllaData() {
   executeEmitterData(() => _repository.fetchVehiclesColors());
  }

  Future<void> addVehicle(AddVehicleParams params) async {
    try {
      emit(LoadingStateListener());
      if( params.id == null || params.id == 0) {
        final id = await _repository.addVehicle(params);
        emit((SuccessStateListener<int>(data:  id)));
      } else {
        final response = await _repository.editVehicle(params);
        emit((SuccessStateListener<String>(data: response.message)));
      }
    } catch (e) {
      print('Error in ErrorDialogState $e');
      emit(FailureStateListener(e));
    }
  }
}
