import 'package:converter/core/utils/strings.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../../utils/numbers.dart';

class ConverterService {
  static final FlutterTts flutterTts = FlutterTts();
  static Future<void> initTts() async {
    await flutterTts.setSharedInstance(true);
    await flutterTts.setLanguage(ConstantAppTexts.language);
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.setSpeechRate(ConstantNumbers.speechRate);
    await flutterTts.setVolume(ConstantNumbers.volume);
    await flutterTts.setPitch(ConstantNumbers.pitch);
  }

  static Future<void> speak({required String text}) async =>
      await flutterTts.speak(text, focus: true);
  static Future<void> stop() async => await flutterTts.stop();
  static Future<void> restart({required String text}) async {
    await stop();
    await speak(text: text);
  }
}
