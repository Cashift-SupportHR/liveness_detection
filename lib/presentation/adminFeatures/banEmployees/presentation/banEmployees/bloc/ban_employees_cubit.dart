import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';


@Injectable()
class BanEmployeesCubit extends BaseCubit {
  final BanEmployeesRepository repository;

  BanEmployeesCubit(this.repository);

  int _page = -1;
  List<BanEmployee> employees = [];
  List<BanEmployee> allEmployees = [];
  BanEmployeeParams params = BanEmployeeParams(pageNumber: 1, type: 1, search: '');

  StreamStateInitial<List<BanEmployee>?> employeeDataStream =
  StreamStateInitial();

  Future<void> fetchStaffBanTab(String searchTerm, int tabIndex) async {
    List<BanEmployee> employees = [];
    executeBuilder(() => repository.fetchStaffBanTabTabsData(),
        onSuccess: (value) async {
          final tabs =
          value.map((e) => BanEmployeeTab.fromDto(e)).toList();
          employees = searchTerm.isNotEmpty
              ? await fetchEmployeesData(BanEmployeeParams(
              pageNumber: 1, type: tabIndex, search: searchTerm))
              : [];
          emit(InitializedEmployeesBanTabsData(
            tabs: tabs,
            employees: employees,
          ));
          fetchEmployeesDataPagination(type: tabIndex, isRefresh: true);
        });
  }

  Future<void> fetchEmployeesDataPagination(
      {bool isRefresh = false, required int type, String? search}) async {
    employees = [];
    try {
      if (isRefresh) {
        employeeDataStream.setData(null);
        _page = 0;
        allEmployees = [];
      } else {
        _page++;
      }
      params = BanEmployeeParams(pageNumber: _page, type: type, search: search);
      employees = await fetchEmployeesData(params);
      allEmployees.addAll(employees);
      employeeDataStream.setData(allEmployees);
    } on Exception catch (e) {
      employeeDataStream.setError(e);
    }
  }


  Future<List<BanEmployee>> fetchEmployeesData(BanEmployeeParams params) async {
    final result = await repository.fetchEmployeesBanData(params);
    print(result);
    final employees = result.map((e) => BanEmployee.fromDto(e)).toList();
    return employees;
  }

  Future<void> updateEmployeeBanStatus(BanEmployeeStatusParams params) async {
    executeEmitterListener(() => repository.updateEmployeeBanStatus(params));
  }
}
