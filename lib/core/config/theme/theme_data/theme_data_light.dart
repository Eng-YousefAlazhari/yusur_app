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


// ThemeData getLightTheme() {
//   return ThemeData(
//     useMaterial3: true,
//     scaffoldBackgroundColor: AppColors.white, // تغيير للخلفية البيضاء حسب واجهات فيجما
//     brightness: Brightness.light,
//     fontFamily: AppFonts.lamaSans,
    
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.primary500,
//       onPrimary: AppColors.white,
//       secondary: AppColors.primary300,
//       surface: AppColors.white,
//       onSurface: AppColors.textPrimary,
//       error: AppColors.red,
//       onError: AppColors.white,
//       outline: AppColors.onSurface,
//     ),

//     // تعديل نصوص الثيم لتدعم التدرجات الموجودة في ملف الألوان
//     textTheme: const TextTheme(
//       displayLarge: TextStyle(color: AppColors.textPrimary),
//       bodyLarge: TextStyle(color: AppColors.textPrimary),
//       bodyMedium: TextStyle(color: AppColors.textSecondary),
//       bodySmall: TextStyle(color: AppColors.textTernary),
//     ),

//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: AppColors.primary500,
//         foregroundColor: AppColors.white,
//         elevation: 0, // التصميم يميل للـ Flat Design
//         disabledBackgroundColor: AppColors.primary0,
//         disabledForegroundColor: AppColors.onSurface,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         textStyle: AppTextStyles.bold16,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//       ),
//     ),

//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: AppColors.background, // لون خفيف للحقول غير النشطة
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: BorderSide.none, // حدود غير مرئية في الحالة العادية (تنسيق عصري)
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: AppColors.primary0),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: AppColors.primary500, width: 1.5),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: AppColors.red),
//       ),
//       hintStyle: AppTextStyles.regular16.copyWith(
//         color: AppColors.textTernaryLite,
//       ),
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//     ),
//   );
// }