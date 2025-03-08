
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_face_api/face_api.dart';
import 'package:livelyness_detection/index.dart';
import 'package:livelyness_detection/livelyness_detection.dart';
import 'package:shiftapp/extensions/extensions.dart';

import '../../../../core/services/permission_detector.dart';

class FaceMatchingUtils {
  static MatchFacesImage convertImageFileToMatchable(
    Uint8List imageUint,
  ) {
    final matchImg = MatchFacesImage();
    matchImg.bitmap = base64Encode(imageUint);
    matchImg.imageType = ImageType.PRINTED;
    return matchImg;
  }
  static MatchFacesImage convertBase64FileToMatchable(
    String base64Encode,
  ) {
    final matchImg = MatchFacesImage();
    matchImg.bitmap = base64Encode;
    matchImg.imageType = ImageType.PRINTED;
    return matchImg;
  }

  static Future<double> matchFaces(
      MatchFacesImage image1, MatchFacesImage image2) async {
    if (image1.bitmap == null ||
        image1.bitmap == "" ||
        image2.bitmap == null ||
        image2.bitmap == "") return Future.error('error');
    var request = new MatchFacesRequest();
    request.images = [image1, image2];
    final matching = await FaceSDK.matchFaces(jsonEncode(request));
    try {
      var response = MatchFacesResponse.fromJson(json.decode(matching));
      final str = await FaceSDK.matchFacesSimilarityThresholdSplit(
          jsonEncode(response!.results), 0.75);

      var split = MatchFacesSimilarityThresholdSplit.fromJson(json.decode(str));
      final simi = await split!.matchedFaces[0]?.similarity;
      print('matchFaces simi ${simi}');

      if (simi != null) return (simi * 100);
      else return Future.error('error');
    } catch (e) {
      print('matchFaces catch ${e}');
      return Future.error(e);
    }
  }

  static Future<File> startLivelyness(BuildContext context, {List<LivelynessStepItem>? list}) async {
    final granted =await  PermissionDetector . detectCameraAndStoragePermission(context);
    if(granted==false) return Future.error('Permission not allowed');;
    String _capturedImagePath = "";
    final _veificationSteps = list ?? [
      LivelynessStepItem(
        step: LivelynessStep.smile,
        title: context.getStrings().smil,
        isCompleted: false,
      ),
    ];

    final response = await LivelynessDetection.instance.detectLivelyness(
      context,
      config: DetectionConfig(
        steps: _veificationSteps,
        startWithInfoScreen: false,
        maxSecToDetect: 20,
        allowAfterMaxSec: false,
        captureButtonColor: Colors.red,
      ),
    );

    if (response!.imgPath.isNullOrEmpty()) {
      return Future.error('error');
    }
    _capturedImagePath = response.imgPath;
    print('_capturedImagePath $_capturedImagePath');
    final file = File(_capturedImagePath.toString());
    return file;
  }
}
