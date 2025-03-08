import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../shared/models/common_list_item.dart';
import '../datasource/focus_point_api_provider.dart';
import '../models/add_covenant_focus_point_params.dart';
import '../models/add_focus_attendance_time_params.dart';
import '../models/add_focus_point_params.dart';
import '../models/covenant_dto.dart';
import '../models/coverage_break_focus_point_dto.dart';
import '../models/employee_type_dto.dart';
import '../models/focus_point_area_dto.dart';
import '../models/focus_point_by_id_dto.dart';
import '../models/focus_point_dto.dart';
import '../models/focus_point_project_dto.dart';
import '../models/focus_point_time_dto.dart';
import '../models/focus_point_transaction_type_dto.dart';
import '../models/focus_point_type_dto.dart';
import '../models/focus_points_types_dto.dart';
import '../models/point_attendance_type_dto.dart';
import '../models/point_priority_number_dto.dart';
import '../models/project_info_focus_point_dto.dart';
import '../models/shift_by_project_id_dto.dart';
import '../models/shift_focus_point_dto.dart';
import '../models/shifts_by_project_dto.dart';

@injectable
class FocusPointsRepository {

  final FocusPointsAPI _api;

  FocusPointsRepository(this._api);

  Future<int> addFocusPoint(AddFocusPointParams params) async {
    final response = await _api.addFocusPoint(params);
    return response.payload!;
  }

  Future<List<CommonListItem>> fetchProjects() async {
    final response = await _api.fetchProjects();
    return response.payload?.map((e) => CommonListItem.fromDto(e)).toList() ?? [];
  }

  Future<List<FocusPointTypeDto>> fetchFocusPointsType() async {
    final response = await _api.fetchFocusPointsType();
    return response.payload!;
  }

  Future<List<EmployeeTypeDto>> fetchEmployeesTypes() async {
    final response = await _api.fetchEmployeesTypes();
    return response.payload!;
  }

  Future<List<PointPriorityNumberDto>> fetchPriorityLevel() async {
    final response = await _api.fetchPriorityLevel();
    return response.payload!;
  }

  Future<List<FocusPointTransactionTypeDto>> fetchFocusPointTransactionTypes() async {
    final response = await _api.fetchFocusPointTransactionTypes();
    return response.payload!;
  }

  Future<String> addFocusPointAttendanceTime(List<AddFocusAttendanceTimeParams> params) async {
    final response = await _api.addFocusPointAttendanceTime(params);
    return response.message!;
  }

  Future<List<ShiftsByProjectDto>> fetchShiftsByProjectId(int projectId) async {
    final response = await _api.fetchShiftsByProjectId(projectId);
    return response.payload!;
  }

  Future<List<CoverageBreakFocusPointDto>> fetchCoverageBreakFocusPoint() async {
    final response = await _api.fetchCoverageBreakFocusPoint();
    return response.payload!;
  }

  Future<List<ShiftFocusPointDto>> fetchShifts(int projectId) async {
    final response = await _api.fetchShifts(projectId);
    return response.payload!;
  }

  Future<String> deleteFocusPointShift(int id) async {
    final response = await _api.deleteFocusPointShift(id);
    return response.message!;
  }

  Future<List<PointAttendanceTypeDto>> fetchFocusPointsAttendanceType() async {
    final response = await _api.fetchFocusPointsAttendanceType();
    return response.payload!;
  }

  Future<String> addFocusPointCovenant(List<AddCovenantFocusPointParams> params) async {
    final response = await _api.addFocusPointCovenant(params);
    return response.message!;
  }

  Future<String> editFocusPointCovenant(AddCovenantFocusPointParams params) async {
    final response = await _api.editCovenantFocusPoint(params);
    return response.message!;
  }


  Future<List<CovenantDto>> fetchCovenantTypes() async {
    final response = await _api.fetchCovenantTypes();
    return response.payload!;
  }

  Future<List<FocusPointDto>> fetchFocusPoints() async {
    final response = await _api.fetchFocusPoints();
    return response.payload!;
  }

  Future<FocusPointByIdDto> fetchFocusPointById(int id) async {
    final response = await _api.fetchFocusPointById(id);
    return response.payload!;
  }

  Future<String> deleteFocusPoint(int id) async {
    final response = await _api.deleteFocusPoint(id);
    return response.message!;
  }

  Future<String> deleteFocusPointCovenant(int id) async {
    final response = await _api.deleteCovenantFocusPoint(id);
    return response.message!;
  }

  Future<String> editFocusPoint(AddFocusPointParams params) async {
    final response = await _api.editFocusPoint(params);
    return response.message!;
  }

  Future<List<FocusPointTimeDto>> fetchFocusPointTimes(int focusPointId) async {
    final response = await _api.fetchFocusPointTimes(focusPointId);
    return response.payload!;
  }

  Future<List<PointAttendanceTime>> fetchFocusPointsAttendanceByFocusPointId(int focusPointId) async {
    final response = await _api.fetchFocusPointsAttendanceByFocusPointId(focusPointId);
    return response.payload!;
  }

  Future<String> editFocusPointAttendance(AddFocusAttendanceTimeParams params) async {
    final response = await _api.editFocusPointAttendance(params);
    return response.message!;
  }
  Future<String> deleteFocusPointAttendance(int id) async {
    final response = await _api.deleteFocusPointAttendance(id);
    return response.message!;
  }

  Future<List<FocusPointAreaDto>> fetchFocusPointAreas(int projectId)async {
    final response = await _api.fetchFocusPointAreas(projectId);
    return response.payload!;
  }

  Future<List<FocusPointsTypesDto>> fetchFocusPointsTypes({required int projectId, required int shiftId}) async {
    final response = await _api.fetchFocusPointsTypes(projectId, shiftId);
    return response.payload!;
  }

  Future<List<ShiftByProjectIdDto>> fetchShiftsByProjects(int projectId) async {
    final response = await _api.fetchShiftsByProjects(projectId);
    return response.payload!;
  }

  Future<ProjectInfoFocusPointDto> fetchInfoTrackingFocusPoint(int projectId) async {
    final response = await _api.fetchInfoTrackingFocusPoint(projectId);
    return response.payload!;
  }
}
