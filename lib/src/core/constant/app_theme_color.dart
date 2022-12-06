import 'package:flutter/material.dart';
import 'package:skadi/skadi.dart';

class AppColor {
  static const Color primary = Color(0xFF4C82F6); // RGB 76, 130, 246
  static MaterialColor get primaryMaterial => SkadiColor.toMaterial(primary);

  static const Color grey1 = Color.fromARGB(100, 247, 247, 247);
  static const Color white255 = Color.fromARGB(255, 255, 255, 255);
  static const Color white155 = Color.fromARGB(155, 255, 255, 255);
}
