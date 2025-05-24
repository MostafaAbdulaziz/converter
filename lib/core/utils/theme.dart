import 'package:flutter/material.dart';

import 'colors.dart';
import 'numbers.dart';

late TextScaler _textScaler;
ThemeData createAppTheme(BuildContext context) {
  _textScaler = MediaQuery.textScalerOf(context);
  return ThemeData(
    textTheme: _createTextTheme(),
    appBarTheme: _createAppBarTheme(),
    inputDecorationTheme: _createTextFormTheme(),
  );
}

TextTheme _createTextTheme() => TextTheme(
  labelMedium: TextStyle(
    fontSize: _textScaler.scale(25),
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

AppBarTheme _createAppBarTheme() => AppBarTheme(
  backgroundColor: AppColors.mainAppColor,
  titleTextStyle: TextStyle(
    fontSize: _textScaler.scale(25),
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  ),
  centerTitle: true,
);

InputDecorationTheme _createTextFormTheme() => InputDecorationTheme(
  enabledBorder: _createBorder(),
  focusedBorder: _createBorder(),
  fillColor: AppColors.mainAppColor,
  filled: true,
);
_createBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(5));
