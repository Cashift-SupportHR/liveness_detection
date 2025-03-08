import 'package:flutter/cupertino.dart';

import 'base_covenant_received_page.dart';

class CovenantReceivedPage extends BaseCovenantReceivedPage {
  final int Function() idCallback;
  final Function onPrevious;

  late int focusPointId;
  CovenantReceivedPage({required this.idCallback, required this.onPrevious});

  @override
  void loadInitialData(BuildContext context) {
    focusPointId = idCallback();
    bloc.fetchCovenantTypes();
  }

  @override
  int initFocusPointId(context) {
    return focusPointId;
  }

  @override
  bool detectRequiredTasks() {
    return false;
  }

  @override
  void onSave() {
    Navigator.pop(context, true);
  }
}
