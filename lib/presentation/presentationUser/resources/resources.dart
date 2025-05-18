import 'package:flutter/cupertino.dart';

import '../../../l10n/app_localizations.dart';

class AppResources {
  static AppLocalizations getStrings(BuildContext context){
    var stringRes = AppLocalizations.of(context);
    return stringRes! ;
  }

}