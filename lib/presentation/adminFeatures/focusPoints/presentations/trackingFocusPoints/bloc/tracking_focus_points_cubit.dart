import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../presentationUser/common/common_state.dart';
import '../../../../../shared/models/common_list_item.dart';
import '../../../data/repositories/focus_points_repository.dart';
import '../../../domain/entities/index.dart';


@Injectable()
class TrackingFocusPointsCubit extends BaseCubit {
  final FocusPointsRepository repository;
  TrackingFocusPointsCubit(this.repository);

  StreamStateInitial<List<ShiftByProjectId>?> shiftsByProjectsStream = StreamStateInitial();
  StreamStateInitial<ProjectInfoFocusPoint?> infoTrackingFocusPointStream = StreamStateInitial();



  Future<void> fetchProjects() async {

    emit(LoadingState());
    try {
      final projects = await repository.fetchProjects();
      if (projects.isNotEmpty) {
        await fetchInfoTrackingFocusPoint(projects.first.id ?? 0);
        await fetchShiftsByProjects(projects.first.id ?? 0);
      }
      emit(Initialized<List<CommonListItem>>(data: projects));
    } catch (e) {
      emit(ErrorState(e));
    }
  }
  Future<void> fetchInfoTrackingFocusPoint(int projectId) async {
    try {
      infoTrackingFocusPointStream.setData(null);
      final infoTrackingFocusPoint = await repository.fetchInfoTrackingFocusPoint(projectId);
      ProjectInfoFocusPoint data = ProjectInfoFocusPoint.fromJson(infoTrackingFocusPoint);
      infoTrackingFocusPointStream.setData(data);
    } catch (e) {
      infoTrackingFocusPointStream.setError(e);
    }
  }
  fetchShiftsByProjects(int projectId) async{
    try {
      shiftsByProjectsStream.setData(null);
      final focusPointsTypes = await repository.fetchShiftsByProjects(projectId);
      List<ShiftByProjectId> data = focusPointsTypes.map((e) => ShiftByProjectId.fromJson(e)).toList();
      shiftsByProjectsStream.setData(data);
    } catch (e) {
      shiftsByProjectsStream.setError(e);
    }
  }

  fetchFocusPointsTypes({required int projectId, required int shiftId}) async{
    try {
      emit(LoadingState());
      final focusPointsTypes = await repository.fetchFocusPointsTypes(projectId: projectId, shiftId: shiftId);
      List<FocusPointsTypes> data = focusPointsTypes.map((e) => FocusPointsTypes.fromJson(e)).toList();
      emit(Initialized<List<FocusPointsTypes>>(data: data));
    } catch (e) {
      emit(ErrorState(e));
    }
  }

}
