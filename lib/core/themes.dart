
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MThemes{

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xffF5F5F5),
  );
   static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xff000000),
  );
}