import 'package:converter/core/utils/theme/text_theme.dart';
import 'package:converter/core/utils/theme/textform_theme.dart';
import 'package:flutter/material.dart';

import 'app_bar_theme.dart';

late TextScaler textScaler;
ThemeData createAppTheme(BuildContext context) {
  textScaler = MediaQuery.textScalerOf(context);
  return ThemeData(
    textTheme: createTextTheme(),
    appBarTheme: createAppBarTheme(),
    inputDecorationTheme: createTextFormTheme(),
  );
}
