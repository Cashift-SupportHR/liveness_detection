import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

import '../../../../../../../utils/app_icons.dart';
import '../../../../../../presentationUser/resources/colors.dart';
import '../../../../../../shared/components/index.dart';
import '../../../../data/models/index.dart';
import '../../../../domain/entities/camera_search_result_args.dart';
import '../../../../domain/entities/vehicle_camera.dart';
import '../../view/widgets/search_vehicle_caamera_sheet.dart';

class TabsSwitchCameraSearchResults extends BaseStatelessWidget {
  final VehicleVideoParams vehicleVideoParams;
  final Function(int)? onTap;
  TabsSwitchCameraSearchResults({super.key, required this.vehicleVideoParams, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: DynamicTabBarView(
        tabs: [
          DynamicItem(id: 0, name: strings.videos),
          DynamicItem(id: 1, name: strings.live_streaming),
        ],
        isSeparate: true,
        initialIndex: vehicleVideoParams.isVideoStream == true ? 1 : 0,
        padding: EdgeInsets.symmetric(vertical: 10),
        marginTabs: EdgeInsets.symmetric(horizontal: 10),
        onTap: onTap,
      ),
    );
  }
}
