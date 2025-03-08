import 'package:injectable/injectable.dart';

import '../../../projectsManagement/data/models/project_management_dto.dart';
import '../../../projectsManagement/data/repositories/projects_management_repository.dart';
import '../../../usersManagement/domain/entities/company.dart';

@Injectable()
class ProjectsUseCase {
  final ProjectsManagementRepository projectsManagementRepository;

  ProjectsUseCase(this.projectsManagementRepository);

  Future<List<ProjectManagementDto>> call() async {
    final response = await projectsManagementRepository.fetchProjects();
    return response;
  }
}
