import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../presentationUser/common/common_state.dart';
import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';

@injectable
class AddFocusPointTimesCubit extends BaseCubit {
  final FocusPointsRepository repository;
  AddFocusPointTimesCubit(this.repository);

  addFocusAttendanceTime(List<AddFocusAttendanceTimeParams>? params) async {
    emit(LoadingStateListener());
    try {
      String message = '';
      if (params?.first.id == null) {
        message = await repository.addFocusPointAttendanceTime(params!);
      } else {
        message = await repository.editFocusPointAttendance(params!.first);
      }

      emit(SuccessStateListener(data: message));
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

  loadFocusPointTimes({required int projectId, int? focusPointId}) async {
    emit(LoadingState());
    try {
      List<AddFocusAttendanceTimeParams> focusPointTimes = [];
      if (focusPointId != null) {
        focusPointTimes =
            await fetchFocusPointsAttendanceByFocusPointId(focusPointId);
      }
      final shifts = await fetchShiftsByProjectId(projectId);

      List<PointAttendanceType> focusPointsAttendanceTypes =
          await fetchFocusPointsAttendanceType();
      emit(InitializedFocusPointTimes(
        focusPointTimes: focusPointTimes,
        shifts: shifts,
        focusPointsAttendanceTypes: focusPointsAttendanceTypes,
        isEdit: focusPointId != null,
      ));
    } catch (e) {
      emit(ErrorState(e));
    }
  }

  Future<List<ShiftsByProject>> fetchShiftsByProjectId(int projectId) async {
    final response = await repository.fetchShiftsByProjectId(projectId);
    List<ShiftsByProject> projects =
        response.map((e) => ShiftsByProject.fromJson(e)).toList();
    return projects;
  }

  Future<List<PointAttendanceType>> fetchFocusPointsAttendanceType() async {
    final response = await repository.fetchFocusPointsAttendanceType();
    List<PointAttendanceType> focusPointsAttendanceType =
        response.map((e) => PointAttendanceType.fromJson(e)).toList();
    return focusPointsAttendanceType;
  }

  Future<List<FocusPointTime>> fetchFocusPointTimes(int focusPointId) async {
    final response = await repository.fetchFocusPointTimes(focusPointId);
    List<FocusPointTime> focusPointsAttendanceType =
        response.map((e) => FocusPointTime.fromJson(e)).toList();
    return focusPointsAttendanceType;
  }

  Future<List<AddFocusAttendanceTimeParams>>
      fetchFocusPointsAttendanceByFocusPointId(int focusPointId) async {
    final response =
        await repository.fetchFocusPointsAttendanceByFocusPointId(focusPointId);
    List<AddFocusAttendanceTimeParams> focusPointsAttendanceType = response
        .map((e) => AddFocusAttendanceTimeParams(
              id: e.id,
              focusPointId: e.focusPointId,
              attendanceTypeId: e.attendanceTypeId,
              shiftId: e.shiftId,
              endTime: e.endTime,
              startTime: e.startTime,
            ))
        .toList();
    return focusPointsAttendanceType;
  }

  Future<void> deleteFocusPointAttendance(int id) async {
    emit(LoadingStateListener());
    try {
      String message = await repository.deleteFocusPointAttendance(id);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }
}
