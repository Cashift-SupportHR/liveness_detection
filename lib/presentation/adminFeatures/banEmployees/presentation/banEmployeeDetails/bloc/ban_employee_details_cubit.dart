import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';


@Injectable()
class BanEmployeeDetailsCubit extends BaseCubit {
  final BanEmployeesRepository repository;

  BanEmployeeDetailsCubit(this.repository);

  Future<void> fetchInitialData(int freelanceId) async {
    executeBuilder(
      () => repository.fetchEmployeeCVDetails(freelanceId),
      onSuccess: (value) async {
        final employeeCVDetails = BanEmployeeDetails.fromDto(value.payload!);
        final jobEvaluationsEmployee = await fetchJobEvaluationsEmployee(freelanceId);
        emit(InitializedCvEmployee(
          employeeCVDetails: employeeCVDetails,
          jobEvaluationsEmployee: jobEvaluationsEmployee,
        ));
      },
    );
  }

  Future<List<JobEvaluationsEmployee>> fetchJobEvaluationsEmployee(
      int freelanceId) async {
    final result = await repository.fetchJobEvaluationsEmployee(freelanceId);
    print(result);
    final employees =
        result.map((e) => JobEvaluationsEmployee.fromDto(e)).toList();
    return employees;
  }
}
