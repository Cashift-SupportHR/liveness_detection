import 'package:injectable/injectable.dart';

import '../../../../../../../../core/bloc/base_cubit.dart';
import '../../../../../../../adminFeatures/focusPoints/data/repositories/focus_points_repository.dart';
import '../../../../../../../adminFeatures/focusPoints/domain/entities/shifts_by_project.dart';
import '../../../../../../../adminFeatures/vehicles/domain/entities/vehicle_details.dart';
import '../../../../../../common/common_state.dart';
import '../../../../../../common/stream_data_state.dart';
import '../../../../../data/repositories/vehicles_operation_repository.dart';

@injectable
class InfoVehiclesCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;
  final FocusPointsRepository focusPointsRepository;

  InfoVehiclesCubit(this._repository, this.focusPointsRepository);
  StreamDataStateInitial<List<ShiftsByProject>?> shiftsStream =
      StreamDataStateInitial<List<ShiftsByProject>?>();
  fetchVehicleByCode(String code) {
    executeBuilder(
      () => _repository.fetchVehicleByCode(code),
      onSuccess: (value) async {
        final data = VehicleDetails.fromDto(value);
        fetchShiftByProjectId(data.projectId ?? 0);
        emit(Initialized<VehicleDetails>(data: data));
      },
    );
  }

  Future<void> fetchShiftByProjectId(int projectId) async {
    try {
      print('projectIds $projectId');
      final response =
          await focusPointsRepository.fetchShiftsByProjectId(projectId);
      List<ShiftsByProject> shifts =
          response.map((e) => ShiftsByProject.fromJson(e)).toList();
      shiftsStream.setData(shifts);
    } catch (e) {
      print('error $e');
      shiftsStream.setError(e);
    }
  }
}
