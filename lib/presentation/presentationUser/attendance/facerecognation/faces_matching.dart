
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_face_api/flutter_face_api.dart';
import 'package:path_provider/path_provider.dart';

import 'package:shiftapp/extensions/extensions.dart';

import '../../../../core/services/permission_detector.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:async';

import '../../../shared/components/index.dart' show BuildContext;
class FaceMatchingUtils {
  static MatchFacesImage convertImageFileToMatchable(
    Uint8List imageUint,ImageType type
  ) {
    final matchImg = MatchFacesImage(imageUint, type);
    return matchImg;
  }


  static Uint8List base64ToUint8List(String base64String) {
    return base64Decode(base64String);
  }

  static Future<double> matchFaces(
      Uint8List liveImageUint, String refImageBase64) async {
    var faceSdk = FaceSDK.instance;

    final liveImage=convertImageFileToMatchable(liveImageUint,ImageType.LIVE);
    final refImage=convertImageFileToMatchable(base64ToUint8List(refImageBase64),ImageType.PRINTED);

    var request = MatchFacesRequest([liveImage, refImage]);
    var response = await faceSdk.matchFaces(request);
    var split = await faceSdk.splitComparedFaces(response.results, 0.75);
    var match = split.matchedFaces;
    try{
    if (match.isNotEmpty) {
      final similarity = (match[0].similarity * 100) ;
      return (similarity * 100);
    }else{
      return Future.error('unable to matching');
    }

    } catch (e) {
      print('matchFaces catch ${e}');
      return Future.error(e);
    }
  }
  //
  // static Future<File> startLivelyness(BuildContext context, {List<LivelynessStepItem>? list}) async {
  //   final granted =await  PermissionDetector . detectCameraAndStoragePermission(context);
  //   if(granted==false) return Future.error('Permission not allowed');;
  //   String _capturedImagePath = "";
  //   final _veificationSteps = list ?? [
  //     LivelynessStepItem(
  //       step: LivelynessStep.smile,
  //       title: context.getStrings().smil,
  //       isCompleted: false,
  //     ),
  //   ];
  //
  //   final response = await LivelynessDetection.instance.detectLivelyness(
  //     context,
  //     config: DetectionConfig(
  //       steps: _veificationSteps,
  //       startWithInfoScreen: false,
  //       maxSecToDetect: 20,
  //       allowAfterMaxSec: false,
  //       captureButtonColor: Colors.red,
  //     ),
  //   );
  //
  //   if (response!.imgPath.isNullOrEmpty()) {
  //     return Future.error('error');
  //   }
  //   _capturedImagePath = response.imgPath;
  //   print('_capturedImagePath $_capturedImagePath');
  //   final file = File(_capturedImagePath.toString());
  //   return file;
  // }

  static var faceSdk = FaceSDK.instance;

  static Future<bool> initialize() async {
    var license = await loadAssetIfExists("assets/regula.license");
    InitConfig? config = null;
    if (license != null) config = InitConfig(license);
    var (success, error) = await faceSdk.initialize(config: config);
    if (!success) {
      print("${error?.code}: ${error?.message}");
    }
    return success;
  }

  static Future<ByteData?> loadAssetIfExists(String path) async {
    try {
      return await rootBundle.load(path);
    } catch (_) {
      return null;
    }
  }
  static Future<File> startLiveness() async {
    await initialize();

    var result = await faceSdk.startLiveness(
      config: LivenessConfig(skipStep: [LivenessSkipStep.ONBOARDING_STEP]),
      notificationCompletion: (notification) {
        print(notification.status);
      },
    );
    if (result == null) {
      print('startLiveness result is null');
      return Future.error('Liveness detection failed');
    }
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.png').create();
    file.writeAsBytesSync(result.image ?? []);
    print('startLiveness result file path: ${file.path}');
    return file;
  }

}
