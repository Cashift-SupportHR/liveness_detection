import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../data/models/upload_file_request_prams.dart';
import '../../../../../data/repositories/requests_user_repository.dart';

@Injectable()
class AddFileRequestsUserCubit extends BaseCubit {
  final RequestsUserRepository repository;

  AddFileRequestsUserCubit(this.repository);

  Future<void> addFileRequest(
      {required UploadFileRequestPrams uploadFileRequestPrams,
      required File file}) async {
    executeEmitterListener(() => repository.addFileRequest(
        uploadFileRequestPrams: uploadFileRequestPrams, file: file));
  }

}
