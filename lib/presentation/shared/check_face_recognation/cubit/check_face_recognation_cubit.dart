import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
 import 'package:path_provider/path_provider.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
 import 'package:shiftapp/data/repositories/profile/profile_repository.dart';
import 'package:shiftapp/domain/entities/account/remote_file.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../../data/models/account/feature_app_dto.dart';
import '../../../../../data/repositories/user/user_repository.dart';
import '../../../../../domain/entities/account/user.dart';

class CheckFaceRecogenationCubit extends BaseCubit {
  final ProfileRepository repository;
  final UserRepository _userRepository;

  CheckFaceRecogenationCubit(
    this.repository,
    this._userRepository,
  );
  String? image;

  fetchRegisteredFace() async {
    try {
      emit(LoadingState());
      final faceRecognitionConfig = _userRepository.accountDataToggle();
      if (faceRecognitionConfig?.isAllowFaceRecognition == true) {
        final value = await repository.downloadFaceRecognition();
        final file = await _createFileFromString(value.payload!);
        Uint8List data = File(file).readAsBytesSync();
        int sizeInBytes = data.length;
        double sizeInMb = sizeInBytes / (1024 * 1024);
        print('sizeInMb ${sizeInMb} => ${value.payload?.fileAttachment}');
        image = value.payload?.fileAttachment;
        print(image);
        emit(InitializedFaceRecognitionData(
          image: image ?? "",
        faceRecognitionConfig: faceRecognitionConfig ?? FaceRecognitionConfig(),
          user: User(),
        ));
      } else {
        emit(InitializedFaceRecognitionData(
          image: "",
          user: User(),
        ));
      }
    } catch (e) {
      // print('fetchRegisteredFace error: $e');
      // final faceRecognitionConfig = _userRepository.accountDataToggle();
        bool isAdmin = _userRepository.isEnableAdmin();
      // bool? adminEnable = _userRepository.accountServices()?.adminEnable;
      // final user = _userRepository.getUser();
      //
      // emit(InitializedToggleData(
      //   image: "",
      //   isAdmin: isAdmin,
      //   adminEnable: adminEnable ?? false,
      //   isAllowFaceRecognition: faceRecognitionConfig?.isAllowFaceRecognition ?? false,
      //   faceRecognitionConfig: faceRecognitionConfig ?? FaceRecognitionConfig(),
      //   user: user ?? User(),
      // ));
        if(isAdmin==true){
          emit(FailureStateListener(e));
        }

    }
  }

  Future<String> _createFileFromString(RemoteFile remote) async {
    Uint8List bytes = base64.decode(remote.fileAttachment.toString());
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = File("$dir/" +
        DateTime.now().millisecondsSinceEpoch.toString() +
        ".${remote.fileAttachmentType.toString()}");
    await file.writeAsBytes(bytes);
    return file.path;
  }


  FaceRecognitionConfig? getDataFaceRecognition() {
    final data = _userRepository.accountDataToggle();
    return data;
  }
}
