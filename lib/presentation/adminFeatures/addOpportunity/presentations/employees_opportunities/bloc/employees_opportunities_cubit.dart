import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';



@injectable
class EmployeesOpportunitiesCubit extends BaseCubit {
  final AddOpportunityRepository repository;

  EmployeesOpportunitiesCubit(this.repository);

  List<EmployeeOpportunity> employees = [];

  Future<void> fetchEmployeesTypesOpportunity() async {
    executeBuilder(() => repository.fetchEmployeesTypesOpportunity(), onSuccess: (value) {
      final employeesTypes = value.map((e) => EmployeeOpportunityType.fromDto(e)).toList();
      emit(Initialized<List<EmployeeOpportunityType>>(data: employeesTypes));
    });
  }


  Future<void> fetchEmployeesOpportunities(EmployeesOpportunityParams params) async {
    executeBuilder(() => repository.fetchEmployeesOpportunities(params), onSuccess: (value) {
      employees = value.map((e) => EmployeeOpportunity.fromDto(e)).toList();
      emit(Initialized<List<EmployeeOpportunity>>(data: employees));
    });
  }

  Future<void> fetchTypesArrivalDeparture() async {
    executeBuilder(() => repository.fetchTypesArrivalDeparture(), onSuccess: (value) {
      final employeesTypes = value.map((e) => EmployeeOpportunityType(
        id: e.id,
        name: e.name,
        icon: e.icon,
        description: e.description,
        code: e.code,
      )).toList();
      emit(Initialized<List<EmployeeOpportunityType>>(data: employeesTypes));
    });
  }
  searchByText(String value) {
    List<EmployeeOpportunity> employees = this.employees;
    emit(LoadingState());
    if(value.isEmpty){
      emit(Initialized<List<EmployeeOpportunity>>(data: employees));
      return;
    }
    final employeesSearched = employees
        .where((user) =>
            (user.name != null && user.name!.contains(value)) ||
            (user.phoneNumber != null && user.phoneNumber!.contains(value)) ||
            (user.cityName != null && user.cityName!.contains(value)))
        .toList();
    print('points is ${employeesSearched}');
    emit(Initialized<List<EmployeeOpportunity>>(data: employeesSearched));
  }
}
