import 'package:flutter/material.dart';
import 'package:flutter_cpc_music_list/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalThemeData {
  static const lightColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 255, 0, 68),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const darkColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 128, 1, 34),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color.fromARGB(255, 26, 26, 26),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    brightness: Brightness.light,
  );

  static ThemeData lightThemeData = ThemeData(
      colorScheme: lightColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white));

  static ThemeData darkThemeData = ThemeData(
      colorScheme: darkColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.black));
}

void onThemeChanged(ThemeData value, ThemeNotifier themeNotifier) async {
  themeNotifier.setTheme(value);

  var prefs = await SharedPreferences.getInstance();
  prefs.setBool('darkMode', true);
}
