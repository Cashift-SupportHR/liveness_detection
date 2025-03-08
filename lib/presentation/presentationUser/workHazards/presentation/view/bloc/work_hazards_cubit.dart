import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/data/exceptions/empty_list_exception.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/work_hazards_repository.dart';
import '../../../domain/entities/work_hazard.dart';

@Injectable()
class WorkHazardsCubit extends BaseCubit {
  final WorkHazardsRepository repository;

  WorkHazardsCubit(this.repository);

  List<WorkHazard> workHazards = [];

  void fetchInitialData() {
    executeBuilder(() => repository.fetchWorkHazards(), onSuccess: (data) {
      workHazards = data;
      emit(Initialized<List<WorkHazard>>(data: data));
    });
  }

  void searchByText(String value) {
    emit(LoadingState());
    if (value.isEmpty) {
      emit(Initialized<List<WorkHazard>>(data: workHazards));
    } else {
      final filteredList = workHazards.where((element) {
        return element.hazardTypeName!
                .toLowerCase()
                .contains(value.toLowerCase()) ||
            element.hazardStatusName!
                .toLowerCase()
                .contains(value.toLowerCase()) ||
            element.hazardPriorityLevelName!
                .toLowerCase()
                .contains(value.toLowerCase());
      }).toList();
      print('filteredList: $filteredList');
      if (filteredList.isEmpty) {
        emit(ErrorState(EmptyListException()));
      } else {
        emit(Initialized<List<WorkHazard>>(data: filteredList));
      }
    }
  }
}
