
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
 import '../../../../../domain/entities/resume/index.dart';
import '../../../projectsManagement/data/models/job_dto.dart';

class FilterEmpMapState extends CommonStateFBuilder{

  final List<CityItem> cities;
  final List<JobDto> jobs;

  FilterEmpMapState({

    required this.cities,
    required this.jobs,
  });
}
