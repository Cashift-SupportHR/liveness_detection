import 'package:injectable/injectable.dart';

import '../../../projectsManagement/data/models/job_dto.dart';
import '../../../projectsManagement/data/models/project_management_dto.dart';
import '../../../projectsManagement/data/repositories/projects_management_repository.dart';

@Injectable()
class JobsUseCase {
  final ProjectsManagementRepository projectsManagementRepository;

  JobsUseCase(this.projectsManagementRepository);

  Future<List<JobDto>> call() async {
    final response = await projectsManagementRepository.fetchAllJobForDrops();
    return response;
  }
}
