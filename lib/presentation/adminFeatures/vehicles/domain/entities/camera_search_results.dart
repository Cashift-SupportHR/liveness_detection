import '../../../../../config.dart';
import '../../../../../data/datasources/remote/remote_constants.dart';
import '../../../../../main_index.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../shared/components/texts/list_row_texts_icons_v2.dart';
import '../../data/models/camera_search_results_dto.dart';

class CameraSearchResults {
  String? cameraName;
  String? vehiclePlatNo;
  String? url;

  CameraSearchResults({this.cameraName, this.vehiclePlatNo, this.url});

  factory CameraSearchResults.fromDto(CameraSearchResultsDto dto) =>
      CameraSearchResults(
        cameraName: dto.cameraName,
        vehiclePlatNo: dto.vehiclePlatNo,
        url: dto.url,
      );

  bool get isValidValid{
    return url.isNotNullOrEmpty() && (url?.startsWith('http') ?? false);
  }

  String getVideoStream(int id, String cameraIndexCode) {
   return '${Config.isTestVersion ? kTESTServerUrl : kCashiftURL}vehicleVideoStream?id=$id&cameraIndexCode=$cameraIndexCode';
  }
}
