import 'package:converter/core/services/text_to_speech_service/converter_service.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConverterService.initTts();
  runApp(const StartingPointApp());
}
