import 'package:converter/controller/app_cubit.dart';
import 'package:converter/controller/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/enums/control_name_enum.dart';
import '../core/utils/numbers.dart';
import 'custom_slider_app.dart';

class ControlSession extends StatelessWidget {
  final ControlName controlName;
  final double maxValue;
  const ControlSession({
    super.key,
    required this.controlName,
    required this.maxValue,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<AppCubit, AppStates>(
    builder:
        (context, state) => Row(
          children: [
            _createNameControl(context),
            CustomSliderApp(maxValue: maxValue, controlName: controlName),
            _createCurrentSlider(context),
          ],
        ),
  );

  Widget _createNameControl(BuildContext context) => SizedBox(
    width: ConstantNumbers.screenWidth / 6.5,
    child: Text(
      controlName.name,
      style: Theme.of(context).textTheme.bodyMedium,
    ),
  );

  Widget _createCurrentSlider(BuildContext context) =>
      BlocBuilder<AppCubit, AppStates>(
        builder:
            (context, state) => Text(
              context.read<AppCubit>().setSliderValue(controlName).toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
      );
}
