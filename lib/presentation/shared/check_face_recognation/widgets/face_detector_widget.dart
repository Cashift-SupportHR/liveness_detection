import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';

import '../../../../data/models/attendance/attendance_config_dto.dart';
import '../../../../generated/assets.dart';
import '../../../../utils/app_icons.dart';
import '../../../presentationUser/attendance/facerecognation/faces_matching.dart';
import '../../../presentationUser/resources/constants.dart';
import '../../components/index.dart';

class FaceDetectorWidget extends StatefulWidget {
  final AttendanceConfigDto attendanceConfigDto;
  final Function(String) onFaceDetection;
  FaceDetectorWidget({required this.attendanceConfigDto, required this.onFaceDetection});

  @override
  State<FaceDetectorWidget> createState() => _ExpampleScreenState();
}

class _ExpampleScreenState extends BaseState<FaceDetectorWidget> {
  //* MARK: - Private Variables
  //? =========================================================
  String? _capturedImagePath;

  @override
  void initState() {
    print('FaceDetectorPage initState');
    super.initState();
  }

  bool isDirectDetectFace = false;

  @override
  void didChangeDependencies() {
    _initValues();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(24.0), child: Header(context));
  }

  Widget Header(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
        const SizedBox(height: 20),
        Text(
          strings.face_print,
          style: kTextBold.copyWith(color: kBlack, fontSize: 16),
        ),
        const SizedBox(height: 20),
        _capturedImagePath == null
            ? SizedBox.shrink()
            : Expanded(
                child: Image.file(
                  File(_capturedImagePath!),
                  width: 600,
                  fit: BoxFit.contain,
                ),
              ),
        Spacer(),
        footer(context),
      ],
    );
  }

  int currentStep = 0;
  Position? position;
  String? qr;
  double? simi;
  File? face;

  //* MARK: - Private Methods for Business Logic
  //? =========================================================
  void _initValues() {
    bool isDirectDetectFace = widget.attendanceConfigDto.isDirectDetectFace ?? false;
    if (isDirectDetectFace) {
      Future.delayed(Duration(milliseconds: 500), () {
        _onStartLivelyness();
      });
    }
  }

  void _onStartLivelyness() async {
    setState(() => _capturedImagePath = null);
    final response = await FaceMatchingUtils.startLiveness();
    _capturedImagePath = response.path;
    setState(() {});
    if (isDirectDetectFace) {
      confirmAction();
    }
    print('_capturedImagePath $_capturedImagePath');
  }

  Widget footer(BuildContext context) {
    return Column(
      children: [
        AppOutlineButton(
          text: strings.scan_now,
          radius: 6,
          height: 50,
          width: double.infinity,
          onClick: _capturedImagePath != null
              ? null
              : () {
                  _onStartLivelyness();
                },
        ),
        SizedBox(
          height: 12,
        ),
        AppCupertinoButton(
          text: strings.confirm_button,
          radius: BorderRadius.circular(6),
          onPressed: confirmAction(),
        ),
      ],
    );
  }

  confirmAction() {
    print('confirmAction');
    if (_capturedImagePath != null) {
      Future.delayed(Duration(milliseconds: 500), () {
        widget.onFaceDetection(_capturedImagePath!);
      });
    } else {
      return null;
    }
  }
}
