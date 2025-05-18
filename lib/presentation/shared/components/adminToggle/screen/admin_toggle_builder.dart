
 import 'package:get/get.dart';
import 'package:shiftapp/core/services/routes.dart';
import 'package:shiftapp/data/models/attendance/attendance_config_dto.dart';
 import 'package:shiftapp/extensions/extensions.dart';
 import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import 'package:shiftapp/presentation/shared/components/adminToggle/screen/admin_toggle_widget.dart';

 import '../../../../presentationUser/attendance/facerecognation/faces_matching.dart';
import '../../../../presentationUser/attendance/facerecognation/index.dart';
import '../../base_widget_bloc.dart';
import '../../dialogs_manager.dart';
import '../../progress/progress_dialog.dart';
import '../cubit/admin_toggle_cubit.dart';

class AdminToggleBuilder
    extends BaseBlocWidget<InitializedToggleData, AdminToggleCubit> {
  @override
  bool detectRequiredTasks() {
    return false;
  }

  @override
  void loadInitialData(BuildContext context) {
    // if (bloc.image == null ||  bloc.image=="") {
    bloc.fetchRegisteredFace();
//  }
  }

  @override
  Widget buildWidget(BuildContext context, InitializedToggleData state) {
    return AdminToggleWidget(
      image: state.image,
      isAllowFaceRecognition: state.isAllowFaceRecognition,
      user:state.user,
      isAdmin: state.isAdmin,
      adminEnable: state.adminEnable,
      setEnableAdmin: (isAdmin) {
        bloc.setEnableAdmin(isAdmin);
      },
      onAction: () {

        onFaceDetection(context);
      },
    );
  }

  double? simi;
  File? face;

  bool isShowDialogs = false;
  final CustomProgressDialog dialogs =
      DialogsManager.createProgressWithMessage(Get.context!);
  showDialogs() {
    if (!isShowDialogs) {
      dialogs.show();
      isShowDialogs = true;
    }
  }

  dismissDialogs() {
    dialogs.dismiss();
    isShowDialogs = false;
  }

  //final _userRepository = getIt.get<UserRepository>();
  void onToggle() {
    // bool isAdmin = _userRepository.isEnableAdmin();
    // _userRepository.setEnableAdmin(!isAdmin);
    bool isAdmin = bloc.isAdmin();
    bloc.setEnableAdmin(!isAdmin);
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  Future<void> onFaceDetection(
    BuildContext context,
  ) async {
    try {
      simi = null;
      final pickedFile = await navigateToCamera(publicContext);
      if (pickedFile != null) {
        simi = await detectFaceSimilitry(pickedFile);
        if (simi != null && simi! > 60) {
          face = pickedFile;
          onToggle();
        }
      }
    } catch (e) {
      handleErrorDialog(strings.undefine_error, context);
    }
  }

  Future<double?> detectFaceSimilitry(File pickedFile) async {
    print('detectFaceSimilitry');
    try {
      showDialogs();
      DialogsManager.createProgressWithMessage(context);
      final pickedUintList = pickedFile.readAsBytesSync();
      final pickedImage =
          FaceMatchingUtils.convertImageFileToMatchable(pickedUintList);
      print(bloc.image);
      print('image bloc');
      final registeredImage =
          FaceMatchingUtils.convertBase64FileToMatchable(bloc.image ?? "");


      final simi =
          await FaceMatchingUtils.matchFaces(pickedImage, registeredImage);

      dismissDialogs();

      print('matchingProcess ${simi}');
      return simi;
    } catch (e) {

      dismissDialogs();
      handleErrorDialog(strings.face_not_matched, publicContext);

      return null;
    }
  }

  Future<File?> navigateToCamera(BuildContext context) async {
    try {
      final data = bloc.getDataToggle();
      final image = await FaceMatchingUtils.startLivelyness(context,
      list: stepsList( AttendanceConfigDto(
        eyeCheck: data?.eyeCheck,
        moveFace: data?.moveFace,
        smile: data?.smile,
        isDirectDetectFace: true,
      ),)
      );

      if (!image.isNullOrEmpty()) {
        return image;
      }
      return null;
    } catch (e) {
      return null;
    }
  }


  List<LivelynessStepItem> stepsList(AttendanceConfigDto attendanceConfigDto) {
   return
     [
       if (attendanceConfigDto.eyeCheck == true)
         LivelynessStepItem(
           step: LivelynessStep.blink,
           title: strings.blink_your_eyes,
           isCompleted: false,
         ),
       if (attendanceConfigDto.moveFace == true)
         LivelynessStepItem(
           step: LivelynessStep.turnLeft,
           title: strings.turn_right,
           isCompleted: false,
         ),
       if (attendanceConfigDto.smile == true)
         LivelynessStepItem(
           step: LivelynessStep.smile,
           title: strings.smil,
           isCompleted: false,
         ),
     ];
  }
}
