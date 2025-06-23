import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shiftapp/generated/assets.dart';
import 'package:shiftapp/presentation/shared/components/image_builder.dart';
import 'package:shiftapp/utils/app_icons.dart';

import '../../../../shared/components/app_cupertino_button.dart';
import '../../../../shared/components/base_stateless_widget.dart';
import '../../../common/common_state.dart';
import '../../facerecognation/faces_matching.dart';
import '../../../resources/colors.dart';
import '../../../resources/constants.dart';
import '../../../salarydefinitionrequest/requests/widgets/warning_widget.dart';
import '../widgets/select_face_recognition.dart';

///  Created by harbey on 8/16/2023.
class RegisterFaceRecognitionScreen extends BaseStatelessWidget {
  final ValueChanged<File> onImagePicked;

  RegisterFaceRecognitionScreen({Key? key, required this.onImagePicked})
      : super(key: key);
  StreamStateInitial<File> pickedImage = StreamStateInitial<File>();


  File imageFile = File('');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16, top: 20, left: 16, right: 16),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              kLoadSvgInCirclePath(
                AppIcons.face_print_background1,
              ),
              kLoadSvgInCirclePath(
                AppIcons.face_print_background2,
              ),
              Image.asset(
                Assets.face_recognition,
                height: 90,
                width: 90,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            strings.face_print,
            style: kTextBold.copyWith(color: kBlack, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Text(
            strings.scan_fac_identify_you,
            style: kTextRegular.copyWith(color: kBlack, fontSize: 16),
          ),
          Spacer(),
          SelectFaceRecognition(
            onImagePicked: (file) {
              print('SelectFaceRecognition ${file.path}');
              pickedImage.setData(file);
               onImagePicked(file);
            },
          ),
        ],
      ),
    );
  }

  navigateToCamera(BuildContext context) async {
    try {
      final imageFile = await FaceMatchingUtils.startLivelyness(context);
        pickedImage.setData(imageFile);
    } catch (e) {}
  }

  Widget footer(BuildContext context, {bool isSave = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        WarningWidget(
          warningText: strings.scan_fac_note,
          margin: EdgeInsets.zero,
          color: kPrimary,
        ),
        AppCupertinoButton(
          text: isSave ? strings.save_button : strings.scan_now,
          radius: BorderRadius.circular(6),
          margin: const EdgeInsets.symmetric(vertical: 16),
          onPressed: () {
            print('imageFile ${imageFile.path}');
            isSave ? onImagePicked(imageFile) : navigateToCamera(context);
            // onImagePicked(imageFile.path!)
            },
        ),
      ],
    );
  }
}
