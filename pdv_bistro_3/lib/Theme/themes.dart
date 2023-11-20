import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/color_schemes.dart';
// import 'package:pdv_bistro2/Theme/custom_color_scheme.dart';

// *LIGHT THEME GLOBAL
final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorSchemes.lightColorScheme,

  // * Appbar TEMA

  appBarTheme: AppBarTheme(
    backgroundColor: ColorSchemes.lightColorScheme.outline,
    foregroundColor: ColorSchemes.lightColorScheme.onSecondary,
  ),

  // BOTTOM NAVIGATION THEME
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorSchemes.lightColorScheme.primary,
    selectedItemColor: ColorSchemes.lightColorScheme.onPrimary,
    unselectedItemColor: ColorSchemes.lightColorScheme.onPrimary,
  ),

  // CARD TEMA
  cardTheme: CardTheme(
    color: ColorSchemes.lightColorScheme.surfaceVariant,
    elevation: 5,
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 22,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: ColorSchemes.lightColorScheme.onSurfaceVariant,
    ),
    headlineLarge: TextStyle(
      fontSize: 13,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: ColorSchemes.lightColorScheme.onSurfaceVariant,
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400,
      color: ColorSchemes.lightColorScheme.onSurfaceVariant,
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w300,
      color: ColorSchemes.lightColorScheme.onSurfaceVariant,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: ColorSchemes.lightColorScheme.onSurfaceVariant,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400,
      color: ColorSchemes.lightColorScheme.onSurfaceVariant,
    ),
    // Adicione mais estilos conforme necessário
  ),
  hintColor: ColorSchemes.lightColorScheme.onSurfaceVariant,
);

// -----------------------------------------------------------------//

// *DARK MODE THEME GLOBAL
final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorSchemes.darkColorScheme,

  // Appbar TEMA
  appBarTheme: AppBarTheme(
    backgroundColor: ColorSchemes.darkColorScheme.surfaceVariant,
    foregroundColor: ColorSchemes.darkColorScheme.onSurfaceVariant,
  ),

  // BOTTOM NAVIGATION THEME
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorSchemes.darkColorScheme.primary,
    selectedItemColor: ColorSchemes.darkColorScheme.onPrimary,
  ),

  // CARD TEMA
  cardTheme: CardTheme(
    color: ColorSchemes.darkColorScheme.surface,
    elevation: 5,
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 24,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: ColorSchemes.darkColorScheme.onSurface,
    ),
    headlineLarge: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: ColorSchemes.darkColorScheme.onSurface,
    ),
    headlineMedium: TextStyle(fontSize: 16, letterSpacing: 0.09, fontWeight: FontWeight.w400, color: ColorSchemes.darkColorScheme.primary // Cor de texto card Atrasado
        ),
    headlineSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w300,
      color: ColorSchemes.darkColorScheme.onSurface,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: ColorSchemes.darkColorScheme.onSurface,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400,
      color: ColorSchemes.darkColorScheme.onSurface,
    ),
    // Adicione mais estilos conforme necessário
  ),
  hintColor: ColorSchemes.darkColorScheme.primary,
);
