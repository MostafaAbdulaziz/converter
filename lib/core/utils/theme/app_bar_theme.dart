import 'package:converter/core/utils/theme/theme_app.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

AppBarTheme createAppBarTheme() => AppBarTheme(
  backgroundColor: AppColors.mainAppColor,
  titleTextStyle: TextStyle(
    fontSize: textScaler.scale(25),
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  ),
  centerTitle: true,
);
