import 'package:flutter/material.dart';

import '../core/services/text_to_speech_service/converter_service.dart';
import '../core/utils/numbers.dart';
import 'custom_button_app.dart';
import 'custom_textForm.dart';

class ButtonsSessions extends StatelessWidget {
  const ButtonsSessions({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CustomButtonApp(
        function:
            () async =>
                await ConverterService.speak(text: textFormController.text),

        icon: Icons.play_arrow,
      ),
      _createSpacing(),
      CustomButtonApp(
        function: () async => await ConverterService.stop(),
        icon: Icons.stop,
      ),
      _createSpacing(),
      CustomButtonApp(
        function:
            () async =>
                await ConverterService.restart(text: textFormController.text),
        icon: Icons.restart_alt,
      ),
    ],
  );
  Widget _createSpacing() => SizedBox(width: ConstantNumbers.screenWidth / 10);
}
