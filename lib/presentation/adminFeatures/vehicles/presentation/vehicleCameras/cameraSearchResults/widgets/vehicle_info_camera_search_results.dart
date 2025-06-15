import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

import '../../../../../../../utils/app_icons.dart';
import '../../../../../../presentationUser/resources/colors.dart';
import '../../../../../../shared/components/index.dart';
import '../../../../data/models/index.dart';
import '../../../../domain/entities/camera_search_result_args.dart';
import '../../../../domain/entities/vehicle_camera.dart';
import '../../view/widgets/search_vehicle_caamera_sheet.dart';

class VehicleInfoCameraSearchResults extends BaseStatelessWidget {
  final CameraSearchResultArgs args;
  final List<VehicleCamera> vehicleCameras;
  final Function(Item position)? onSelectItem;
  VehicleInfoCameraSearchResults({super.key, required this.args, required this.vehicleCameras, required this.onSelectItem});

  @override
  Widget build(BuildContext context) {
    TextStyle valueStyle = kTextMedium.copyWith(color: kBlack, fontSize: 12);
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 15, right: 15, left: 15),
      decoration: Decorations.shapeDecorationShadow(),
      child: Column(
        children: [
          IconDoubleText(
            name: strings.vehicle_number + ': ',
            value: args.vehicle.plateNumber ?? '',
            icon: AppIcons.vehicle_number,
            nameStyle: kTextMedium.copyWith(fontSize: 14, color: kPrimary),
            valueStyle: valueStyle,
            padding: EdgeInsets.only(bottom: 15),
          ),
          // To display the dropdown camera selection
          BottomSheetTextFieldRectangle(
            title: strings.camera,
            hintText: strings.select_camera,
            iconTitle: AppIcons.camera_vehicle,
            items: VehicleCamera.toItems(args.vehicleCameras),
            initValue: args.initialCamera?.fullName,
            onSelectItem: onSelectItem,
          ),
        ],
      ),
    );
  }
}
