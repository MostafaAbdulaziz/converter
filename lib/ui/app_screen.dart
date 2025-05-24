import 'package:flutter/material.dart';

import '../core/enums/control_name_enum.dart';
import '../core/utils/numbers.dart';
import '../widgets/buttons_session.dart';
import '../widgets/control_session.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/custom_textForm.dart';
import '../widgets/sized_box_widget.dart';

class ScreenApp extends StatelessWidget {
  const ScreenApp({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: createCustomAppbar(), body: _createBody(context));

  Widget _createBody(BuildContext context) => Padding(
    padding: EdgeInsets.all(ConstantNumbers.screenWidth / 20),
    child: Column(
      children: [
        CustomTextForm(),
        const SizedBoxHeightWidget(ratioNumber: 25),
        ControlSession(
          controlName: ControlName.volume,
          maxValue: ConstantNumbers.maxValueOfVolume,
        ),
        const SizedBoxHeightWidget(ratioNumber: 45),
        ControlSession(
          controlName: ControlName.rate,
          maxValue: ConstantNumbers.maxValueOfRate,
        ),
        const SizedBoxHeightWidget(ratioNumber: 45),
        ControlSession(
          controlName: ControlName.pitch,
          maxValue: ConstantNumbers.maxValueOfPitch,
        ),
        const SizedBoxHeightWidget(ratioNumber: 12),
        const ButtonsSessions(),
      ],
    ),
  );
}
