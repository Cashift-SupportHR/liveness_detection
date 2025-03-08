import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../data/repositories/work_hazards_repository.dart';
import '../../../domain/entities/work_hazard.dart';

@Injectable()
class WorkHazardDetailsCubit extends BaseCubit {
  final WorkHazardsRepository repository;

  WorkHazardDetailsCubit(this.repository);

  List<WorkHazard> workHazards = [];

  void fetchWorkHazardDetails(int id) {
    executeEmitterData(() => repository.fetchWorkHazardDetails(id));
  }
}
