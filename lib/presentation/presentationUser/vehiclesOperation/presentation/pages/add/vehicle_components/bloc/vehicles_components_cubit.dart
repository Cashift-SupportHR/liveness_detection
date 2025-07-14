import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../../../../../core/bloc/base_cubit.dart';
import '../../../../../../common/common_state.dart';
import '../../../../../data/models/add_components_prams.dart';
import '../../../../../data/models/add_image_and_descriptions_components_prams.dart';
import '../../../../../data/models/create_vehicle_handover_prams.dart';
import '../../../../../data/models/vehicle_components_dto.dart';
import '../../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../../domain/entities/CreateVehicleHandover.dart';
import '../../../../../domain/entities/vehicleComponents.dart';
import '../../../../../domain/entities/receive_vehicle_details.dart';
import '../../../../../domain/entities/vehicle_component_handover.dart';

@injectable
class VehiclesComponentsCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;

  VehiclesComponentsCubit(this._repository);


  ReceiveVehicleDetails? receiveVehicleDetails;
  List<VehicleComponents>? vehicleComponents;

  fetchVehicleComponents(int? receiveVehicleId) async {
    if (vehicleComponents == null) {
      fetchAllData(receiveVehicleId);
    } else {
      emit(InitializedVehiclesComponents(
          vehicleComponents: vehicleComponents ?? [],
          receiveVehicleDetails: receiveVehicleDetails));
    }
  }

 Future<void> fetchAllData(int? receiveVehicleId) async {
    try {
      emit(LoadingState());

      if (receiveVehicleId == null || receiveVehicleId == 0) {
        vehicleComponents = await _repository.fetchVehicleComponents();
      } else {
        receiveVehicleDetails =
            await _repository.fetchReceiveVehicleDetails(receiveVehicleId);
        vehicleComponents = VehicleComponentHandover.toVehicleComponents(
            receiveVehicleDetails?.vehiclesComponentsHandovers ?? []);
      }

      emit(InitializedVehiclesComponents(
          vehicleComponents: vehicleComponents ?? [],
          receiveVehicleDetails: receiveVehicleDetails));
    } catch (e) {
      emit(ErrorState(e));
      rethrow;
    }
  }

  addComponents(AddComponentsPrams addComponentsPrams) {
    executeEmitterListener(
      () => _repository.addComponents(addComponentsPrams),
    );
  }

  StreamState<bool> addStream = StreamStateInitial();

  addImageAndDescriptionsComponents(
      {required AddImageAndDescriptionsComponentsPrams
          addImageAndDescriptionsComponentsPrams,
      File? file}) {
    executeEmitterListener(
      () => _repository.addImageAndDescriptionsComponents(
          addImageAndDescriptionsComponentsPrams:
              addImageAndDescriptionsComponentsPrams,
          file: file!.path.contains('http')
              ? null : file),
      onSuccess: (value) => addStream.setData(true),
    );
  }
}
