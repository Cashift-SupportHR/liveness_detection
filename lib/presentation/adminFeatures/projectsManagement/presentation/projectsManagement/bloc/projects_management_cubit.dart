import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/projects_management_repository.dart';
import '../../../domain/entities/project_management.dart';

@Injectable()
class ProjectsManagementCubit extends BaseCubit {
  final ProjectsManagementRepository repository;

  ProjectsManagementCubit(this.repository);

  List<ProjectManagement> users = [];

  Future<void> fetchProjects() async {
    emit(LoadingState());
    try {
      final result = await repository.fetchProjects();
      users = result.map((e) => ProjectManagement.fromDto(e)).toList();
      emit(Initialized<List<ProjectManagement>>(data: users));
    } on Exception catch (e) {
      emit(ErrorState(e));
    }
  }

  void searchByText(String value) {
    emit(LoadingState());
    final projectsSearched = users
        .where((element) =>
            element.nameAr!.contains(value) ||
            element.nameEn!.contains(value))
        .toList();
    emit(Initialized<List<ProjectManagement>>(data: projectsSearched));
  }
}
