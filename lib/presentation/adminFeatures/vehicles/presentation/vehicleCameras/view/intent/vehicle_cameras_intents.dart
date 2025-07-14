import '../../../../data/models/vehicle_video_params.dart';
import '../../../../domain/entities/vehicle_camera.dart';

abstract class VehicleCamerasIntents {}

class EditVehicleCamera extends VehicleCamerasIntents {
  final VehicleCamera data;

  EditVehicleCamera(this.data);
}

class DeleteVehicleCamera extends VehicleCamerasIntents {
  final int id;

  DeleteVehicleCamera(this.id);
}

class SearchVehicleCamera extends VehicleCamerasIntents {
  final bool isVideoStream;
  final VehicleCamera item;

  SearchVehicleCamera({required this.isVideoStream, required this.item});
}
