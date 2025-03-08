
import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import '../../../../../common/stream_data_state.dart';
import '../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../domain/entities/index.dart';

@Injectable()
class TourHistoryCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;

  TourHistoryCubit(this._repository);

  void fetchInitialData(int roundTripId) async {
   executeEmitterData(() => _repository.fetchRoundTripDetails(roundTripId));
  }


}
