import 'package:injectable/injectable.dart';

import '../../../projectsManagement/data/repositories/projects_management_repository.dart';
import '../../../usersManagement/domain/entities/company.dart';

@Injectable()
class CompaniesUseCase {
  final ProjectsManagementRepository projectsManagementRepository;

  CompaniesUseCase(this.projectsManagementRepository);

  Future<List<Company>> call() async {
    final response = await projectsManagementRepository.fetchCompanies();
    return response;
  }
}
