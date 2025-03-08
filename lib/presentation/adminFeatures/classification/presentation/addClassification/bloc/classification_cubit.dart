import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import '../../../../projectsManagement/data/repositories/projects_management_repository.dart';
import '../../../../usersManagement/domain/entities/company.dart';
import '../../../data/models/index.dart';
import '../../../data/repositories/classification_repository.dart';

@Injectable()
class AddClassificationCubit extends BaseCubit {
  final ClassificationRepository _repository;
  final ProjectsManagementRepository projectsManagementRepository;
  AddClassificationCubit(this._repository, this.projectsManagementRepository);

  fetchInitialData() async {
    executeBuilder(() => projectsManagementRepository.fetchCompanies(), onSuccess: (companies) {
      emit(Initialized<List<Company>>(data: companies));
    });
  }

  addEditClassification({required AddEditClassificationPrams addEditClassificationPrams}) async {
    try {
      emit(LoadingStateListener());
      final message = await _repository.addEditClassification(addEditClassificationPrams: addEditClassificationPrams);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      print(e);
      print("jjkjkjkjk");
      emit(FailureStateListener(e));
    }
  }
}
