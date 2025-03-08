import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:month_year_picker/month_year_picker.dart';

import '../../main_index.dart';
import '../../presentation/presentationUser/resources/colors.dart';

class MaterialAppConfig {
  ThemeData? theme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => kPrimary), //<-- SEE HERE
      ),
      hoverColor: kPrimary,
      focusColor: Colors.amber,
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: const MaterialColor(
            0xff1e866f,
            <int, Color>{
              50: Color(0xff1e866f),
              100: Color(0xff1e866f),
              200: Color(0xff1e866f),
              300: Color(0xff1e866f),
              400: Color(0xff1e866f),
              500: Color(0xff1e866f),
              600: Color(0xff1e866f),
              700: Color(0xff1e866f),
              800: Color(0xff1e866f),
              900: Color(0xff1e866f),
            },
          )).copyWith(background: Colors.white));

  Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates = const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    MonthYearPickerLocalizations.delegate,
  ];

  Iterable<Locale> supportedLocales = const [
    Locale('en', ''), // English, no country code
    Locale('ar', ''), // Arabic, no country code
  ];
}
