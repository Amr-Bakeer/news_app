import 'package:flutter/material.dart';

class ApplicationThemeManager {

  static ThemeData applicationThemeData =  ThemeData(
    primaryColor: const Color(0xff39A552),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: const Color(0xff39A552),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
    ),
  );
}