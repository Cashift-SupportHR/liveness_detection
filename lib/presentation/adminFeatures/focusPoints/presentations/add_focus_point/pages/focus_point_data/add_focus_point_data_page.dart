import 'package:flutter/cupertino.dart';

import '../../../widgets/base_focus_point_data_page.dart';

class AddFocusPointDataPage extends BaseFocusPointDataPage {
  final Function(int projectId , int focusPointId)? onSave;

  AddFocusPointDataPage({Key? key, this.onSave}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.loadFocusPointData();
  }

  @override
  bool detectRequiredTasks() {
    return false;
  }
  @override
  void onSaveNewPoint(int id, int projectID) {
    if (onSave != null) {
      onSave!(projectID , id);
    }
  }
}
