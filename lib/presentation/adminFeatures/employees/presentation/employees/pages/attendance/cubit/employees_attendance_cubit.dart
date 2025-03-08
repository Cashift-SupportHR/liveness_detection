import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../../data/models/emp_attandance_prams.dart';
import '../../../../../data/repositories/employees_repository.dart';
import '../../../../../domain/entities/Emp_attandance.dart';

@Injectable()
class EmployeesAttendanceCubit extends BaseCubit {
  final EmployeesRepository repository;

  EmployeesAttendanceCubit(this.repository);

  fetchInitialData({required EmpAttandancePrams empAttandancePrams}) async {
    executeBuilder(() => repository.fetchEmployeeAttendance(empAttandancePrams),
        onSuccess: (result) {
      emit(Initialized<EmpAttandance>(data: result));
    });
  }
}
