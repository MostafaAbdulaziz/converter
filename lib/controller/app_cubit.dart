import 'package:bloc/bloc.dart';
import 'package:converter/controller/app_states.dart';
import 'package:converter/core/services/text_to_speech_service/converter_service.dart';
import 'package:converter/core/utils/numbers.dart';

import '../core/enums/control_name_enum.dart' show ControlName;

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialSates());

  // double speechRate = 1;
  // double volume = 0.5;
  // double pitch = 1;
  void moveSlider(double currentValue, ControlName controlName) {
    switch (controlName) {
      case ControlName.volume:
        ConstantNumbers.volume = currentValue;
        ConverterService.flutterTts.setVolume(ConstantNumbers.volume);
      case ControlName.rate:
        ConstantNumbers.speechRate = currentValue;
        ConverterService.flutterTts.setSpeechRate(ConstantNumbers.speechRate);
      case ControlName.pitch:
        ConstantNumbers.pitch = currentValue;
        ConverterService.flutterTts.setPitch(ConstantNumbers.pitch);
    }
    emit(MovingSliderState());
  }

  double setSliderValue(ControlName controlName) {
    switch (controlName) {
      case ControlName.volume:
        return ConstantNumbers.volume;
      case ControlName.rate:
        return ConstantNumbers.speechRate;
      case ControlName.pitch:
        return ConstantNumbers.pitch;
    }
  }
}
