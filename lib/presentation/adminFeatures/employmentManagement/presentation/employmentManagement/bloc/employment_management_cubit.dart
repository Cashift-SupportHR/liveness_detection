import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../focusPoints/data/repositories/focus_points_repository.dart';
import '../../../../projectsManagement/domain/entities/working_period.dart';
import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';

@Injectable()
class EmploymentManagementCubit extends BaseCubit {
  final EmploymentManagementRepository repository;
  final FocusPointsRepository focusPointsRepository;

  EmploymentManagementCubit(this.repository, this.focusPointsRepository);

  StreamStateInitial<List<EmployeeData>?> employeeDataStream =
      StreamStateInitial();

  Future<void> fetchEmploymentManagementTabsData(String searchTerm,
      {int? type, int? successApprovedLevel}) async {
    List<EmployeeData> employees = [];
    executeBuilder(() => repository.fetchEmploymentManagementTabsData(),
        onSuccess: (value) async {
      final tabs =
          value.map((e) => EmploymentManagementTab.fromDto(e)).toList();
      final popups = await repository.fetchPopupsData();
      // employees = searchTerm.isNotEmpty
      //     ? await fetchEmployeesData(EmployeeDataParams(
      //         pageNumber: 1, pageSize: 20, type: tabIndex, search: searchTerm, successApprovedLevel: successApprovedLevel))
      //     : [];
      emit(InitializedEmploymentTabsData(
        tabs: tabs,
        employees: employees,
        popups: popups,
      ));
      fetchEmployeesDataPagination(
          type: type ?? tabs.first.id ?? 0,
          isRefresh: true,
          successApprovedLevel: successApprovedLevel,
          search: searchTerm);
    });
  }

  int _page = -1;
  List<EmployeeData> employees = [];
  List<EmployeeData> allEmployees = [];
  EmployeeDataParams params =
      EmployeeDataParams(pageNumber: 1, type: 1, pageSize: 10, search: '');

  Future<void> fetchEmployeesDataPagination(
      {bool isRefresh = false,
      required int type,
      String? search,
      int? successApprovedLevel}) async {
    employees = [];
    try {
      if (isRefresh) {
        employeeDataStream.setData(null);
        _page = 0;
        allEmployees = [];
      } else {
        _page++;
      }
      params = EmployeeDataParams(
          pageNumber: _page,
          type: type,
          pageSize: 10,
          search: search,
          successApprovedLevel: successApprovedLevel);
      employees = await fetchEmployeesData(params);
      allEmployees.addAll(employees);
      employeeDataStream.setData(allEmployees);
    } on Exception catch (e) {
      employeeDataStream.setError(e);
    }
  }

  Future<void> fetchAllEmployeeData(int freelanceId) async {
    emit(LoadingState());
    try {
      final orderStatus = await fetchEmployeesOrderStatus();
      final orderStatusIfAccept = await fetchEmployeesOrderStatusIfAccept();
      final projects = await focusPointsRepository.fetchProjects();
      final workingPeriods = await fetchWorkingPeriods();
      final employeeOrderStatus =
          await fetchEmployeesOrderStatusForEdit(freelanceId);
      emit(InitializedSaveEmployeeData(
        orderStatus: orderStatus,
        orderStatusIfAccept: orderStatusIfAccept,
        projects: projects,
        workingPeriods: workingPeriods,
        employeeOrderStatus: employeeOrderStatus,
      ));
    } on Exception catch (e) {
      emit(ErrorState(e));
    }
  }

  Future<void> saveEmployeesOrderStatus(SaveOrderStatusParams params) async {
    executeEmitterListener(() => repository.saveEmployeesOrderStatus(params));
  }

  Future<List<EmployeeData>> fetchEmployeesData(
      EmployeeDataParams params) async {
    final result = await repository.fetchEmployeesData(params);
    print(result);
    final employees = result.map((e) => EmployeeData.fromDto(e)).toList();
    return employees;
  }

  Future<List<OrderStatus>> fetchEmployeesOrderStatus() async {
    final result = await repository.fetchEmployeesOrderStatus();
    final orderStatus = result.map((e) => OrderStatus.fromDto(e)).toList();
    return orderStatus;
  }

  Future<List<OrderStatus>> fetchEmployeesOrderStatusIfAccept() async {
    final result = await repository.fetchEmployeesOrderStatusIfAccept();
    final orderStatus = result.map((e) => OrderStatus.fromDto(e)).toList();
    return orderStatus;
  }
  Future<List<WorkingPeriod>> fetchWorkingPeriods() async {
    final result = await repository.fetchWorkingPeriods();
    final workingPeriods = result.map((e) => WorkingPeriod.fromDto(e)).toList();
    return workingPeriods;
  }

  Future<EmployeeOrderStatus> fetchEmployeesOrderStatusForEdit(
      int freelanceId) async {
    final result =
        await repository.fetchEmployeesOrderStatusForEdit(freelanceId);
    final employeeOrderStatus = EmployeeOrderStatus.fromDto(result);
    return employeeOrderStatus;
  }

  void addBlockEmployee(AddBlockEmployeeParams params) {
    executeEmitterListener(() => repository.addBlockEmployee(params));
  }

  void allowEditFaceRecognition(int id) {
    executeEmitterListener(() => repository.allowEditFaceRecognition(id));
  }
}
