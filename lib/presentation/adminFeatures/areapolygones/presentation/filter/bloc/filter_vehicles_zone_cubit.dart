
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../../presentationUser/common/stream_data_state.dart';
import '../../../../../presentationUser/map_picker/widgets/map_picker_item.dart';
import '../../../../../presentationUser/map_picker/widgets/map_prediction.dart';
import '../../../../../shared/models/common_list_item.dart';
import '../../../../focusPoints/data/models/index.dart';
import '../../../../focusPoints/domain/entities/shifts_by_project.dart';
import '../../../../projectsManagement/data/models/index.dart';
import '../../../../usersManagement/data/models/index.dart';
import '../../../data/models/filter_vehicle_zone_params.dart';
import '../../../data/repositories/vehicles_zone_repository.dart';
import '../../../domain/entities/vehicle_zone.dart';
import 'filter_vehicles_zone_state.dart';

@Injectable()
class FilterVehiclesZoneCubit extends BaseCubit {
  final VehiclesZoneRepository _repository;
  final FocusPointsRepository focusPointsRepository;
  final ProjectsManagementRepository projectsRepository;
  final UsersManagementRepository usersRepository;
  FilterVehiclesZoneCubit(this._repository, this.focusPointsRepository, this.usersRepository, this.projectsRepository);

  StreamStateInitial<List<MapPrediction>?> predictionsSearchStream = StreamStateInitial();
  StreamStateInitial<MapPickerItem?> placeDetailsStream = StreamStateInitial();
  StreamStateInitial<LatLng?> myLocationStream = StreamStateInitial();

  StreamDataStateInitial<List<CommonListItem>?> projectsStream = StreamDataStateInitial<List<CommonListItem>?>();
  StreamDataStateInitial<List<ShiftsByProject>?> shiftsStream =
  StreamDataStateInitial<List<ShiftsByProject>?>();
  StreamDataStateInitial<List<VehicleZone>?> vehiclesZoneAreasByProjectIdStream =
  StreamDataStateInitial<List<VehicleZone>?>();

  Future<void> fetchInitialData() async {
    emit(LoadingState());
    try {
      final companies = await projectsRepository.fetchCompanies();
      FilterVehiclesZoneState state = FilterVehiclesZoneState(
        companies: companies,
        projectsStream: projectsStream,
        shiftsStream: shiftsStream,
          vehiclesZoneAreasByProjectIdStream: vehiclesZoneAreasByProjectIdStream,
      );
      emit(Initialized<FilterVehiclesZoneState>(data: state));
    } catch (e) {
      projectsStream.setError(e);
    }
  }

  Future<void> fetchProjectsCompanyId(int companyId) async {
    try {
      final data = await usersRepository.fetchListProjectsByCompanyId(companyId);
      projectsStream.setData(data);
    } on Exception catch (e) {
      projectsStream.setError(e);
    }
  }

  Future<void> fetchVehiclesZoneAreasByProjectId(FilterVehicleZoneParams params) async {
    try {
      final response = await _repository.fetchVehiclesZoneAreasByProjectId(params);
      vehiclesZoneAreasByProjectIdStream.setData(response);
    } catch (e) {
      print('error sdasd $e');
      vehiclesZoneAreasByProjectIdStream.setError(e);
    }
  }

  Future<void> fetchShiftsByProjectId(int projectId) async {
    try {
      final response = await focusPointsRepository.fetchShiftsByProjectId(projectId);
      List<ShiftsByProject> shifts =
      response.map((e) => ShiftsByProject.fromJson(e)).toList();
      shiftsStream.setData(shifts);
    } catch (e) {
      shiftsStream.setError(e);
    }
  }
}
