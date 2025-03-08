import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../presentationUser/common/common_state.dart';
import '../../../../../shared/models/common_list_item.dart';
import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';

@injectable
class AddFocusPointDataCubit extends BaseCubit {
  final FocusPointsRepository repository;
  AddFocusPointDataCubit(this.repository);

  StreamStateInitial<List<FocusPointArea>>? areasStream = StreamStateInitial<List<FocusPointArea>>();
  StreamStateInitial<List<ShiftFocusPoint>>? shiftsStream = StreamStateInitial<List<ShiftFocusPoint>>();

  //
  addFocusPoint(AddFocusPointParams params) async {
    emit(LoadingStateListener());
    try {
      String message = '';
     if(params.id == null){
       params.id=0;
       final id  = await repository.addFocusPoint(params);
       emit(SuccessStateListener<int>(data: id));

     } else {
        message = await repository.editFocusPoint(params);
        emit(SuccessStateListener(data: message));

     }
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

  loadFocusPointData({int? focusPointId}) async{
    emit(LoadingState());
    try {
      FocusPointById focusPointById = FocusPointById();
      focusPointId == null ? null :
      focusPointById = await fetchFocusPointById(focusPointId);
      List<CommonListItem> projects = await repository.fetchProjects();
      List<FocusPointType> focusPointsType = await fetchFocusPointsType();
      List<EmployeeType> employeesTypes = await fetchEmployeesTypes();
      List<PointPriorityNumber> priorityNumber = await fetchPriorityLevel();
      List<FocusPointTransactionType> focusPointTransactionTypes = await fetchFocusPointTransactionTypes();
      List<CoverageBreakFocusPoint> coverageBreak = await fetchCoverageBreakFocusPoint();
      emit(InitializedFocusPointData(
          focusPointById: focusPointById,
          projects: projects,
          focusPointsType: focusPointsType,
          employeesTypes: employeesTypes,
          priorityLevel: priorityNumber,
          focusPointTransactionTypes: focusPointTransactionTypes,
          coverageBreak: coverageBreak,
      ));
    } catch (e) {
      emit(ErrorState(e));
    }
  }

  Future<List<FocusPointType>> fetchFocusPointsType() async {
    final response = await repository.fetchFocusPointsType();
    List<FocusPointType> focusPointsType = response.map((e) => FocusPointType.fromJson(e)).toList();
    return focusPointsType;
  }

  Future<List<EmployeeType>> fetchEmployeesTypes() async {
    final response = await repository.fetchEmployeesTypes();
    List<EmployeeType> employeesTypes = response.map((e) => EmployeeType.fromJson(e)).toList();
    return employeesTypes;
  }

  Future<List<PointPriorityNumber>> fetchPriorityLevel() async {
    final response = await repository.fetchPriorityLevel();
    List<PointPriorityNumber> priorityNumber = response.map((e) => PointPriorityNumber.fromDto(e)).toList();
    return priorityNumber;
  }

  Future<void> fetchFocusPointAreas(int projectId) async {
    try {
      final response = await repository.fetchFocusPointAreas(projectId);
      List<FocusPointArea> areas = response.map((e) => FocusPointArea.fromDto(e)).toList();
      areasStream!.setData(areas);
    } catch (e) {
      areasStream!.setError(e);
    }
  }

  Future<List<FocusPointTransactionType>> fetchFocusPointTransactionTypes() async {
    final response = await repository.fetchFocusPointTransactionTypes();
    List<FocusPointTransactionType> data = response.map((e) => FocusPointTransactionType.fromDto(e)).toList();
    return data;
  }

  Future<List<CoverageBreakFocusPoint>> fetchCoverageBreakFocusPoint() async {
      final response = await repository.fetchCoverageBreakFocusPoint();
      List<CoverageBreakFocusPoint> data = response.map((e) => CoverageBreakFocusPoint.fromDto(e)).toList();
      return data;
  }

  Future<FocusPointById> fetchFocusPointById(int id) async {
    final response = await repository.fetchFocusPointById(id);
    FocusPointById focusPointById = FocusPointById.fromDto(response);
    return focusPointById;
  }

  Future<void> fetchShifts(int projectId) async {
    try {
      final response = await repository.fetchShifts(projectId);
      List<ShiftFocusPoint> shifts = response.map((e) => ShiftFocusPoint.fromDto(e)).toList();
      shiftsStream!.setData(shifts);
    } catch (e) {
      shiftsStream!.setError(e);
    }
  }

  deleteFocusPointShift(int id) async {
    emit(LoadingStateListener());
    try {
        final message  = await repository.deleteFocusPointShift(id);
        emit(SuccessStateListener(data: message));

    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

}
