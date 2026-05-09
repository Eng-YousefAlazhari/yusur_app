import 'package:flutter/material.dart';
import 'package:yusur_app/core/config/theme/app_colors.dart';
import 'package:yusur_app/core/config/theme/app_fonts.dart';
import 'package:yusur_app/core/config/theme/app_text_styles.dart';

ThemeData getLightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    brightness: Brightness.light,
    fontFamily: AppFonts.lamaSans,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary500,
      brightness: Brightness.light,
    ),

    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.black,
      displayColor: AppColors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary500,
        foregroundColor: AppColors.white,
        disabledBackgroundColor: AppColors.onSurface,
        disabledForegroundColor: AppColors.white80,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: AppTextStyles.bold16,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.onSurface),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.onSurface),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primary200),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.primary200;
        }
        return AppColors.primary0;
      }),
      filled: true,
      hintStyle: AppTextStyles.regular16.copyWith(
        color: AppColors.textTernaryLite,
      ),
    ),
  );
}
