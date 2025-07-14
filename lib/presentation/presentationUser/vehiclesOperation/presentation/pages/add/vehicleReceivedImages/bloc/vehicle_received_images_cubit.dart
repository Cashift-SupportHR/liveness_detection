import 'package:injectable/injectable.dart';

import '../../../../../../../../core/bloc/base_cubit.dart';
import '../../../../../../../adminFeatures/vehicles/data/repositories/vehicles_repository.dart';
import '../../../../../../../adminFeatures/vehicles/domain/entities/vehicle_image_face.dart';
import '../../../../../../common/common_state.dart';
import '../../../../../data/models/create_vehicle_handover_prams.dart';
import '../../../../../data/models/vehicle_received_images_params.dart';
import '../../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../../domain/entities/CreateVehicleHandover.dart';

@injectable
class VehicleReceivedImagesCubit extends BaseCubit {
  final ReceiveVehiclesRepository _repository;
  final VehiclesRepository _vehiclesRepository;

  VehicleReceivedImagesCubit(
      this._repository, this._vehiclesRepository);

  // This variable is used to store the vehicle image faces
  List<VehicleImageFace>? vehicleImageFaces;
  CreateVehicleHandover? createVehicleHandover;

  void fetchAllaData(CreateVehicleHandoverPrams createVehicleHandoverPrams){
    if (vehicleImageFaces == null) {
      executeBuilder((){
        return _repository.createVehicleHandover(createVehicleHandoverPrams);
      }, onSuccess: (CreateVehicleHandover data) async {
        createVehicleHandover = data;
        final vehicleImageFaces = await _vehiclesRepository.fetchVehiclesImagesFaces();
        emit(InitializedReceivedVehiclesImages(
          createVehicleHandover: data,
          vehicleImageFaces: vehicleImageFaces,
        ));
      });
    } else {
      emit(InitializedReceivedVehiclesImages(
        createVehicleHandover: createVehicleHandover ?? CreateVehicleHandover(),
        vehicleImageFaces: vehicleImageFaces ?? [],
      ));
    }
  }

  void addVehicleHandoverImages(VehicleReceivedImagesParams params) {
   executeEmitterListener(() => _repository.addVehicleHandoverImages(params));
  }

}
