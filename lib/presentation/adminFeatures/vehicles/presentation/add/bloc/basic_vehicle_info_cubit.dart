import 'package:injectable/injectable.dart';

import '../../../../../../core/bloc/base_cubit.dart';
import '../../../../../presentationUser/common/common_state.dart';
import '../../../../../presentationUser/common/stream_data_state.dart';
import '../../../../../shared/models/common_list_item.dart';
import '../../../../projectsManagement/data/models/index.dart';
import '../../../../usersManagement/data/models/index.dart';
import '../../../data/repositories/vehicles_repository.dart';
import 'basic_vehicle_info_state.dart';

@injectable
class BasicVehicleInformationCubit extends BaseCubit {
  final VehiclesRepository _repository;
  final ProjectsManagementRepository projectsRepository;
  final UsersManagementRepository usersRepository;

  BasicVehicleInformationCubit(
      this._repository, this.projectsRepository, this.usersRepository);

  StreamDataStateInitial<List<CommonListItem>?> projectsStream =
      StreamDataStateInitial<List<CommonListItem>?>();

  fetchAllaData(int? id) async {
    emit(LoadingState());
    try {
      final initialData = (id != null && id != 0) ? await _repository.fetchVehicleById(id) : null;
      final vehiclesTypes = await _repository.fetchVehiclesTypes();
      final companies = await projectsRepository.fetchCompanies();
      if (initialData != null && initialData.companyId != null) {
        await fetchProjectsCompanyId(initialData.companyId!);
      }
      emit(Initialized<BasicVehicleInformationState>(
          data: BasicVehicleInformationState(
            initialData: initialData,
            vehiclesTypes: vehiclesTypes,
            companies: companies,
            projectsStream: projectsStream,
          )));
    } catch (e) {
      emit(ErrorState(e));
      rethrow;
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
}
