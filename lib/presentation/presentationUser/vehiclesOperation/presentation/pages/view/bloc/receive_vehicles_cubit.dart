import 'package:injectable/injectable.dart';

import '../../../../../../../../core/bloc/base_cubit.dart';
 import '../../../../../../../data/exceptions/verification_face_exception.dart';
import '../../../../../common/common_state.dart';
import '../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../domain/entities/receiveVehicle.dart';

@injectable
class ReceiveVehiclesCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;

  ReceiveVehiclesCubit(this._repository, );


  fetchReceiveVehicle(bool isComplete) async {
    executeBuilder(() => _repository.fetchReceiveVehicle(isComplete),
        onSuccess: (result) async {
          final data = result.map((e) => ReceiveVehicle.fromDto(e)).toList();
          emit(Initialized<List<ReceiveVehicle>>(data: data));
        });
  }


}
