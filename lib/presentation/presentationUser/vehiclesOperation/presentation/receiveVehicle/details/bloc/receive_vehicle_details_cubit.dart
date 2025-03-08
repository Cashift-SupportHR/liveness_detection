import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../data/repositories/vehicles_operation_repository.dart';

@Injectable()
class ReceiveVehicleDetailsCubit extends BaseCubit {
  final ReceiveVehiclesRepository repository;

  ReceiveVehicleDetailsCubit(this.repository);

  void fetchReceiveVehicleDetails(int id) {
    executeEmitterData(() => repository.fetchReceiveVehicleDetails(id));
  }
}
