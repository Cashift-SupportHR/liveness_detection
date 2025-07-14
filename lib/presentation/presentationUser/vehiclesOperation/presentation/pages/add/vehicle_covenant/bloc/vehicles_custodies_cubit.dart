import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../../../../../core/bloc/base_cubit.dart';
import '../../../../../../common/common_state.dart';
import '../../../../../data/models/add_custodies_prams.dart';
import '../../../../../data/models/add_image_and_descriptions_components_prams.dart';
import '../../../../../data/models/confirm_receive_vehicle_params.dart';
import '../../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../../domain/entities/custody_handover.dart';
import '../../../../../domain/entities/index.dart';

@injectable
class VehiclesCustodiesCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;

  VehiclesCustodiesCubit(this._repository);

  List<VehicleComponents> vehicleComponents = [];

  fetchVehicleCustodie(
      int vehicleId, List<CustodyHandover>? initialData) async {
    // initialData comes from VehicleComponentsPage
    if (vehicleComponents.isEmpty) {
      if (initialData == null || initialData.isEmpty) {
        executeBuilder(() => _repository.fetchVehicleCustodies(vehicleId),
            onSuccess: (data) async {
          emit(Initialized<List<VehicleComponents>>(data: data));
        });
      } else {
        print(
            "fetchVehicleCustodie ${initialData.map((e) => print(e.custodyStatus)).toList()}");
        emit(Initialized<List<VehicleComponents>>(
            data: CustodyHandover.toVehicleComponents(initialData)));
      }
    } else {
      emit(Initialized<List<VehicleComponents>>(data: vehicleComponents));
    }
  }

  addCustodiesAndConfirmRejectReceiveVehicle(
      {required AddCustodiesPrams addCustodiesPrams,
      required ConfirmReceiveVehicleParams params}) {
    executeListener(
      () => _repository.addCustodies(addCustodiesPrams),
      onSuccess: (data) async {
        String message = data.message ?? "";
        message = await _repository.confirmRejectReceiveVehicle(params);
        emit(SuccessStateListener(data: message));
      },
    );
  }
  StreamState<bool> addStream = StreamStateInitial();


  addImageAndDescriptionsCustodies(
      {required AddImageAndDescriptionsComponentsPrams
          addImageAndDescriptionsComponentsPrams,
      File? file}) {
    executeEmitterListener(
      () => _repository.addImageAndDescriptionsCustodies(
          addImageAndDescriptionsComponentsPrams:
              addImageAndDescriptionsComponentsPrams,
          file: file!.path.contains('http')
              ? null : file),onSuccess: (value) => addStream.setData(true),
    );
  }
}
