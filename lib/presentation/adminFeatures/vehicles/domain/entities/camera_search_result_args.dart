
import '../../data/models/vehicle_video_params.dart';
import 'index.dart';

class CameraSearchResultArgs {
  VehicleVideoParams vehicleVideoParams;
  List<VehicleCamera> vehicleCameras;
  Vehicle vehicle;
  VehicleCamera? initialCamera;

  CameraSearchResultArgs({
    required this.vehicleVideoParams,
    required this.vehicleCameras,
    required this.vehicle,
    this.initialCamera,
  });
}
