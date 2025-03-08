
import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import '../../../../../common/common_state.dart';
import '../../../../../common/stream_data_state.dart';
import '../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../domain/entities/index.dart';
import 'current_tour_map_state.dart';

@Injectable()
class CurrentTourMapCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;

  CurrentTourMapCubit(this._repository);


  StreamStateInitial<List<RoundTypeTermsAndCondition>?> roundTypeTermsAndConditionStream =
  StreamStateInitial<List<RoundTypeTermsAndCondition>?>();

  void fetchInitialData() async {
    executeBuilder(() => _repository.fetchCurrentTrip(),
        onSuccess: (currentRoundTrip) async {
          emit(Initialized<CurrentTourMapState>(
              data: CurrentTourMapState(
                currentRoundTrip: currentRoundTrip,
                roundTypeTermsAndConditionStream: roundTypeTermsAndConditionStream,
              )));
        });
  }


  void fetchRoundTypeTermsAndCondition(int roundTypeId) async {
    try {
      final response =
      await _repository.fetchRoundTypeTermsAndCondition(roundTypeId);
      roundTypeTermsAndConditionStream.setData(response);
    } catch (e) {
      roundTypeTermsAndConditionStream.setError(e);
      rethrow;
    }
  }

  void endRoundTrip(int tripId) async {
    executeEmitterListener(() => _repository.endRoundTrip(tripId));
  }

}
