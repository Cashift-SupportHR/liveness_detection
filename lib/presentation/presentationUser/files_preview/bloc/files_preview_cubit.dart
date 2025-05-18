import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/extensions/extensions.dart';

import '../../../../data/models/salary-definition-request/index.dart';
import '../../common/common_state.dart';
import '../../../shared/components/files/files_manager.dart';

@Injectable()
class FilesPreviewCubit extends BaseCubit {
  FilesPreviewCubit();

  Future<void> shareFile(String data) async {
    emit(LoadingStateListener());
    try {
      String filePath = await FilesManager.downloadFileFromUrl(data);

   emit(SuccessStateListener<List<XFile>>(data: [XFile(filePath)]));
    }catch (e) {
      emit(FailureStateListener(e));
      rethrow;
    }
  }

  Future<void> downLoadFromUrl(String data) async {
    emit(LoadingStateListener());
    try {
      String filePath = await FilesManager.downloadFileFromUrl(data);
     ( filePath.contains("http")||  filePath.contains(".pdf")) ?  await FilesManager().saveFileFromFile(filePath):  await FilesManager().saveFileFromBase64(
       DownLoadFileDto(fileAttachment:filePath, fileAttachmentType: 'jpg'),
     );
      emit(SuccessStateListener(
          data: Get.context!.getStrings().successfully_downloaded));
    }catch (e) {
      emit(FailureStateListener(e));
      rethrow;
    }
  }
}

