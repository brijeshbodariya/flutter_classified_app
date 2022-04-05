import 'package:flutter/foundation.dart';

const String mainUI = "main_ui";
const String splashScreen = "splash_screen";

void prints(String message) {
  if (kDebugMode) {
    print(message);
  }
}
