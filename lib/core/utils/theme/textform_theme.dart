import 'package:flutter/material.dart';

import '../colors.dart';

InputDecorationTheme createTextFormTheme() => InputDecorationTheme(
  enabledBorder: _createBorder(),
  focusedBorder: _createBorder(),
  fillColor: AppColors.mainAppColor,
  filled: true,
);
_createBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(5));
