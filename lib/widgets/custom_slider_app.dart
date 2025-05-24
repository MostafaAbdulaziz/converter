import 'package:converter/controller/app_cubit.dart';
import 'package:converter/controller/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/enums/control_name_enum.dart';
import '../core/utils/colors.dart';
import '../core/utils/numbers.dart';

class CustomSliderApp extends StatelessWidget {
  final ControlName controlName;
  final double maxValue;
  const CustomSliderApp({
    super.key,
    required this.maxValue,
    required this.controlName,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder:
          (context, state) => Slider(
            value: context.read<AppCubit>().setSliderValue(controlName),
            onChanged: (currentValue) {
              context.read<AppCubit>().moveSlider(currentValue, controlName);
            },
            max: maxValue,
            divisions: ConstantNumbers.divisionsNumber,
            label: context
                .read<AppCubit>()
                .setSliderValue(controlName)
                .toStringAsFixed(ConstantNumbers.numberOfDigitsAppearing),
            activeColor: AppColors.redAccentColor,
          ),
    );
  }
}
