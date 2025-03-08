import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/employees_repository.dart';
import '../../../domain/entities/EmpChasifterData.dart';
import '../../../domain/entities/tab_cashifter.dart';

@Injectable()
class EmployeesCubit extends BaseCubit {
  final EmployeesRepository repository;

  EmployeesCubit(this.repository);

  StreamStateInitial<List<EmpChasifter>?> empChasifterStream = StreamStateInitial();
  StreamStateInitial<List<TabCashifter>?> tabCashifterStream = StreamStateInitial();
  List<EmpChasifter> listEmpChasifter = [];

  fetchInitialData() async {
    executeBuilder(() => repository.fetchTab(), onSuccess: (result) {
      final data = result.map((e) => TabCashifter.fromDto(e)).toList();
      fetchEmpChasifter(employeeStatusId: data.first.id!);
      emit(Initialized<List<TabCashifter>>(data: data));
    });
  }

  void searchByText(String value) {
    try {
      List<EmpChasifter> usersSearched = listEmpChasifter;
      if (value.isNotEmpty) {
        usersSearched = listEmpChasifter.where((user) => (user.phone != null && user.phone!.contains(value)) || (user.name != null && user.name!.contains(value))).toList();
      }
      empChasifterStream.setData(usersSearched);
    } on Exception catch (e) {
      print(e);
      empChasifterStream.setError(e);
    }
  }
  // fetchInitialData({required int employeeStatusId}) async {
  //
  //   executeBuilder(() => repository.fetchEmployeeChashifter(employeeStatusId: employeeStatusId), onSuccess: (result) {
  //     listEmpChasifter = result.map((e) => EmpChasifter.fromDto(e)).toList();
  //     emit(Initialized<List<EmpChasifter>>(data: listEmpChasifter));
  //   });
  // }

  fetchEmpChasifter({required int employeeStatusId}) async {
    empChasifterStream.setData(null);
    try {
      final result = await repository.fetchEmployeeChashifter(employeeStatusId: employeeStatusId);
      listEmpChasifter = result.map((e) => EmpChasifter.fromDto(e)).toList();
      empChasifterStream.setData(listEmpChasifter);
    } on Exception catch (e) {
      empChasifterStream.setError(e);
    }
  }

  // Future<void> fetchTabs(int type) async {
  //   executeBuilder(() => repository.(type), onSuccess: (value) {
  //     users = value.map((e) => UserManagement.fromDto(e)).toList();
  //     emit(Initialized<List<UserManagement>>(data: users));
  //   });
  // }

  // Future<void> changeUserStatus(String id) async {
  //   emit(LoadingDialogState());
  //   try {
  //     final message = await repository.changeUserStatus(id);
  //     emit(FinishedDialogState(message: message));
  //   } on Exception catch (e) {
  //     emit(ErrorDialogState(e));
  //   }
  // }

  // void searchByText(String value) {
  //   emit(LoadingState());
  //   final usersSearched = users
  //       .where((user) =>
  //           (user.name != null && user.name!.contains(value)) ||
  //           (user.phoneNumber != null && user.phoneNumber!.contains(value)) ||
  //           (user.email != null && user.email!.contains(value)))
  //       .toList();
  //   emit(Initialized<List<UserManagement>>(data: usersSearched));
  // }
}
