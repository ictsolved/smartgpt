import 'package:flutter/material.dart';
import 'package:smart_gpt/core/constants/ui_colors.dart';

class AppTheme {
  static final ThemeData dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: UIColors.backgroundPrimary,
    colorScheme: ColorScheme.fromSeed(seedColor: UIColors.backgroundPrimary),
    appBarTheme: const AppBarTheme(
      backgroundColor: UIColors.backgroundPrimary,
      elevation: 0,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15.5),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        minimumSize: WidgetStatePropertyAll(Size(0, 48)),
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        foregroundColor: WidgetStatePropertyAll(UIColors.blueLight),
      ),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: UIColors.backgroundPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    ),
    dividerColor: UIColors.divider,
    popupMenuTheme: PopupMenuThemeData(
      position: PopupMenuPosition.under,
      color: UIColors.backgroundPrimary,
      surfaceTintColor: UIColors.backgroundPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        minimumSize: WidgetStatePropertyAll(Size(0, 48)),
        foregroundColor: WidgetStatePropertyAll(UIColors.white),
      ),
    ),
    dialogTheme: DialogTheme(
      surfaceTintColor: UIColors.backgroundPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
