import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';


import '../../../../../presentationUser/common/common_state.dart';
 import '../../../../../shared/models/common_list_item.dart';
import '../../../data/models/add_maintenance_prams.dart';
 import '../../../data/repositories/maintenance_breakdowns_repository.dart';

@Injectable()
class AddMaintenanceBreakdownsCubit extends BaseCubit {
  final MaintenanceBreakdownsRepository repository;

  AddMaintenanceBreakdownsCubit(this.repository);

  void fetchInitialData() async {
    executeBuilder(
      () => repository.fetchTypeMaintenance(),
      onSuccess: (data) {
        emit(Initialized<List<CommonListItem>>(data: data));
      },
    );
  }

  void addMaintenance(
    AddMaintenancePrams params, {
    required List<File> filesAfter,
    required List<File> fileBefore,
  }) {
    executeEmitterListener(
      () => repository.addMaintenance(params, filesAfter, fileBefore),
    );
  }
}
