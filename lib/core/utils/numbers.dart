import '../../../operations/get_screen_parts_size.dart'
    show makeOperationBodyHeight;

class ConstantNumbers {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double statusBarHeight = 0;
  static double bottomScreenHeight = 0;
  static double appBarHeight = 0;
  static double bodyHeight = makeOperationBodyHeight();
  static const double maxValueOfVolume = 1;
  static const double maxValueOfRate = 2;
  static const double maxValueOfPitch = 2;
  static final double buttonSize = screenWidth / 5.5;
  static double speechRate = 1;
  static double volume = 0.5;
  static double pitch = 1;
  static int divisionsNumber = 10;
  static int numberOfDigitsAppearing = 1;
}
