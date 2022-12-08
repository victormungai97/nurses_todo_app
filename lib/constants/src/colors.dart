// lib/constants/src/colors.dart

import 'package:flutter/material.dart';

/// Define the various colors used in the app
class AppColors {
  static const MaterialColor kPrimaryColor = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(0xFF000000),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

  /// Color to signify errors
  static const errorColor = Color.fromARGB(255, 255, 50, 10);

  /// The default color of background canvas
  static const canvasColor = Color(0xfff6f5f5);

}