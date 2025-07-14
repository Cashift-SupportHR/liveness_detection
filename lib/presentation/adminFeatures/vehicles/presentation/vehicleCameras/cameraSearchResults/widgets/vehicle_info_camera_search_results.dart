
import '../../../../../../shared/components/index.dart';
import '../../../../domain/entities/camera_search_result_args.dart';
import '../../../../domain/entities/vehicle_camera.dart';

class VehicleInfoCameraSearchResults extends BaseStatelessWidget {
  final CameraSearchResultArgs args;
  VehicleInfoCameraSearchResults({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(12),
      decoration: Decorations.shapeDecorationShadow(),
      child:  ListRowTextsIconsV2(
        isMark: true,
        items: args.vehicle.toListRowTextItems(strings),
      ),
    );
  }
}
