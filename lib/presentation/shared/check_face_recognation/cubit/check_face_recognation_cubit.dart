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


  fetchRegisteredFace() async {
    try {

      final faceRecognitionConfig = _userRepository.accountDataToggle();
      if (faceRecognitionConfig?.isAllowFaceRecognition == true) {
        final image = await repository.getFaceImageBase64();

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
       bool isAdmin = _userRepository.isEnableAdmin();
        if(isAdmin==true){
          emit(FailureStateListener(e));
        }
    }
  }

}
