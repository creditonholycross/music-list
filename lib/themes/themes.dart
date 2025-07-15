import 'package:flutter/material.dart';
import 'package:flutter_cpc_music_list/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalThemeData {
  static const lightRedColorScheme = ColorScheme(
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

  static const darkRedColorScheme = ColorScheme(
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

  static const lightGreenColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 0, 255, 0),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const darkGreenColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 1, 128, 1),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color.fromARGB(255, 26, 26, 26),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    brightness: Brightness.light,
  );

  static const lightBlackColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 0, 0, 0),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const darkBlackColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 0, 0, 0),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color.fromARGB(255, 26, 26, 26),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    brightness: Brightness.light,
  );

  static const lightGoldColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 255, 207, 49),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const darkGoldColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 211, 171, 40),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color.fromARGB(255, 26, 26, 26),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    brightness: Brightness.light,
  );

  static const lightPurpleColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 183, 0, 255),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const darkPurpleColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 77, 1, 128),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color.fromARGB(255, 26, 26, 26),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    brightness: Brightness.light,
  );

  static const lightRoseColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 236, 151, 208),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color.fromARGB(255, 0, 0, 0),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const darkRoseColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 187, 118, 181),
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
      colorScheme: lightRedColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white));

  static ThemeData darkThemeData = ThemeData(
      colorScheme: darkRedColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.black));

  static ThemeData lightGreenThemeData = ThemeData(
      colorScheme: lightGreenColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white));

  static ThemeData darkGreenThemeData = ThemeData(
      colorScheme: darkGreenColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.black));

  static ThemeData lightBlackThemeData = ThemeData(
      colorScheme: lightBlackColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white));

  static ThemeData darkBlackThemeData = ThemeData(
      colorScheme: darkBlackColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.black));

  static ThemeData lightGoldThemeData = ThemeData(
      colorScheme: lightGoldColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white));

  static ThemeData darkGoldThemeData = ThemeData(
      colorScheme: darkGoldColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.black));

  static ThemeData lightPurpleThemeData = ThemeData(
      colorScheme: lightPurpleColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white));

  static ThemeData darkPurpleThemeData = ThemeData(
      colorScheme: darkPurpleColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.black));

  static ThemeData lightRoseThemeData = ThemeData(
      colorScheme: lightRoseColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white));

  static ThemeData darkRoseThemeData = ThemeData(
      colorScheme: darkRoseColorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.black));

  static Map<String, ThemeData> themeLightMap = {
    'base': lightThemeData,
    'red': lightThemeData,
    'green': lightGreenThemeData,
    'black': lightBlackThemeData,
    'gold': lightGoldThemeData,
    'purple': lightPurpleThemeData,
    'rose': lightRoseThemeData,
  };

  static Map<String, ThemeData> themeDarkMap = {
    'base': darkThemeData,
    'red': darkThemeData,
    'green': darkGreenThemeData,
    'black': darkBlackThemeData,
    'gold': darkGoldThemeData,
    'purple': darkPurpleThemeData,
    'rose': darkRoseThemeData,
  };
}

void onThemeChanged(String theme, ThemeNotifier themeNotifier) async {
  themeNotifier.setTheme(GlobalThemeData.themeLightMap[theme] as ThemeData,
      GlobalThemeData.themeDarkMap[theme] as ThemeData);
  var prefs = await SharedPreferences.getInstance();
  prefs.setString('themeName', theme);
}
