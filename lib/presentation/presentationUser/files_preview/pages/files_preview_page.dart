import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import 'package:shiftapp/presentation/shared/components/base_widget_bloc.dart';

import '../bloc/files_preview_cubit.dart';
import 'files_preview_screen.dart';

class FilesPreviewPage extends BaseBlocWidget<UnInitState, FilesPreviewCubit> {
  FilesPreviewPage({
    Key? key,
  }) : super(key: key);

  @override
  bool detectRequiredTasks() {
    return false;
  }

  @override
  String title(context) => strings.attached_attachments;
  

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return FilesPreviewScreen(
      data: getArguments(context) ?? [],
      onDownload: (link) {
        bloc.downLoadFromUrl(link);
      },
      onShare: (link) {
        bloc.shareFile(link);
      },
    );
  }

  @override
  void buildListener(BuildContext context, state) async {
    super.buildListener(context, state);
    if (state is SuccessStateListener<List<XFile>>) {
      await Share.shareXFiles(
        state.data ?? [],
      );
    }
  }
}
