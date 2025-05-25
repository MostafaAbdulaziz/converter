import 'package:converter/core/utils/theme/theme_app.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../numbers.dart';

TextTheme createTextTheme() => TextTheme(
  labelMedium: TextStyle(
    fontSize: textScaler.scale(25),
    color: AppColors.whiteColor,
  ),
  bodySmall: TextStyle(
    fontSize: ConstantNumbers.screenWidth / 23,
    color: AppColors.blackColor,
  ),
  bodyMedium: TextStyle(
    fontSize: ConstantNumbers.screenWidth / 23,
    color: AppColors.blackColor,
  ),
);
