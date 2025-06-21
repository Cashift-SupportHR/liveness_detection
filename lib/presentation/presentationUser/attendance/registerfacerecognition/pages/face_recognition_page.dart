import 'package:flutter/material.dart';


import '../../../../../data/repositories/profile/profile_repository.dart';
import '../../../../../data/repositories/user/user_repository.dart';
import '../../../../../domain/entities/account/registered_face.dart';
import '../../../../../domain/entities/account/user.dart';
import '../../../../../main_index.dart';
import '../../../../adminFeatures/di/injector.dart';
import '../../../../shared/components/adminToggle/cubit/admin_toggle_cubit.dart';
import '../../../../shared/components/base_widget_bloc.dart';
 import '../../../common/common_state.dart';
import '../../facerecognation/faces_matching.dart';
import '../bloc/face_recognition_cubit.dart';
import 'register_face_recognition_screen.dart';
import 'update_face_recognition_screen.dart';

///  Created by harbey on 8/16/2023.
class FaceRecognitionPage extends BaseBlocWidget<Initialized<RegisteredFace?>,
    FaceRecognitionCubit> {

  @override
  bool initializeByKoin() {
    return false;
  }

  @override
  void loadInitialData(BuildContext context) {
    bloc.downloadFaceRecognition();
  }

  @override
  String? title(BuildContext context) {
    return strings.add_face_print;
  }

  @override
  Widget buildWidget(BuildContext context, Initialized<RegisteredFace?> state) {
    User? user = getArguments(context);
    return state.data == null
        ? RegisterFaceRecognitionScreen(
            onImagePicked: (file) {
              bloc.saveFace(file);
            },
          )
        : UpdateFaceRecognitionScreen(
            user: user,
            registeredFace: state.data!,
            onImagePicked: (file) {
              bloc.saveFace(file);
            },
          );
  }

  navigateToCamera(BuildContext context) async {
    try {
      final imageFile = await FaceMatchingUtils.startLiveness();
      bloc.saveFace(imageFile);
    } catch (e) {}
  }

  @override
  void onSuccessDismissed() {
    loadInitialData(context);
      getIt.get<AdminToggleCubit>()..image="";
  }

  @override
  bool detectRequiredTasks() {
    return false;
  }
}
