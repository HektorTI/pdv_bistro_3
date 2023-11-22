import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/themes.dart';

enum CustomThemeMode { light, dark, system }

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = lightTheme;
  CustomThemeMode _currentThemeMode = CustomThemeMode.light;

  ThemeData get currentTheme => _currentTheme;

  ThemeMode get currentThemeMode {
    switch (_currentThemeMode) {
      case CustomThemeMode.light:
        return ThemeMode.light;
      case CustomThemeMode.dark:
        return ThemeMode.dark;
      case CustomThemeMode.system:
        return ThemeMode.system;
    }
  }

  void toggleTheme() {
    _currentThemeMode = _currentThemeMode == CustomThemeMode.light ? CustomThemeMode.dark : CustomThemeMode.light;

    _currentTheme = _currentThemeMode == CustomThemeMode.light ? lightTheme : darkTheme;

    notifyListeners();
  }
}
