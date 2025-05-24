import 'package:flutter/material.dart';

import '../core/utils/colors.dart';
import '../core/utils/numbers.dart';

class CustomButtonApp extends StatelessWidget {
  final IconData icon;
  final Function() function;
  const CustomButtonApp({
    super.key,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) => IconButton.filled(
    onPressed: function,
    icon: Icon(icon),
    color: AppColors.whiteColor,
    style: IconButton.styleFrom(
      backgroundColor: AppColors.redAccentColor,
      fixedSize: Size(ConstantNumbers.buttonSize, ConstantNumbers.buttonSize),
    ),
  );
}
