import '../../../../../main_index.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../shared/components/texts/list_row_texts_icons_v2.dart';
import '../../data/models/camera_search_results_dto.dart';

class CameraSearchResults {
  String? cameraName;
  String? vehiclePlatNo;
  String? videoUrl;

  CameraSearchResults({this.cameraName, this.vehiclePlatNo, this.videoUrl});

  factory CameraSearchResults.fromDto(CameraSearchResultsDto dto) =>
      CameraSearchResults(
        cameraName: dto.cameraName,
        vehiclePlatNo: dto.vehiclePlatNo,
        videoUrl: dto.videoUrl,
      );

  bool get isValidValid{
    return videoUrl.isNotNullOrEmpty() && (videoUrl?.startsWith('http') ?? false);
  }
}
