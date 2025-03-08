import 'package:flutter/cupertino.dart';

import '../../../main_index.dart';

class AppResources {
  static AppLocalizations getStrings(BuildContext context){
    var stringRes = AppLocalizations.of(context);
    return stringRes! ;
  }

}