import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/focus_points_repository.dart';
import '../../../domain/entities/focus_point.dart';

@Injectable()
class FocusPointCubit extends BaseCubit {
  final FocusPointsRepository repository;

  FocusPointCubit(this.repository);
  List<FocusPoint> focusPointsList = [];
  Future<void> loadInitialData() async {
    emit(LoadingState());
    focusPointsList = [];
    try {
      final focusPoints = await repository.fetchFocusPoints();
      List<FocusPoint> focusPointsList =
          focusPoints.map((e) => FocusPoint.fromDto(e)).toList();
      this.focusPointsList = focusPointsList;
      emit(Initialized(data: focusPointsList));
    } on Exception catch (e) {
      emit(ErrorState(e));
    }
  }

  deleteFocusPoint(int id) async {
    emit(LoadingStateListener());
    try {
      final message = await repository.deleteFocusPoint(id);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

  void searchByText(String value) {
    emit(LoadingState());
    final pointsSearched = focusPointsList
        .where((element) => element.focusPointName!.contains(value))
        .toList();
    print('searchByText ${pointsSearched.length}');
    emit(Initialized<List<FocusPoint>>(data: pointsSearched));
  }
}
