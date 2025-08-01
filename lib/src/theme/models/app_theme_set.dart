import 'dart:ui';

import 'package:theme_ui_widgets/src/theme/models/import_theme_color_set.dart';
import 'package:theme_ui_widgets/theme_ui_widgets.dart';
// it is going to be in project not in package

const brandColorScheme = AppBrandColorScheme(
  skyline: Color(0xFF00B5FF),
  aqua: Color(0xFF00C8FF),
  violet: Color(0xFF9327FF),
  amethyst: Color(0xFF8427E0),
  berry: Color(0xFFE3006D),
  coral: Color(0xFFFB006D),
  golden: Color(0xFFF7931E),
  amber: Color(0xFFFFBD00),
  lemon: Color(0xFFFFCE00),
);

const otherColorsColorScheme = AppOtherColorsColorScheme(
  textHighlight: Color(0xFF00B5FF),
);

// bridget to makde appthemeData
class AppThemeSet {
  AppThemeSet({
    required this.themeName,
    required this.lightThemeColors,
    required this.darkThemeColors,
    required this.isInbuilt,
    this.fontFamily,
  });

  final String themeName;
  final ImportThemeColorSet lightThemeColors;
  final ImportThemeColorSet darkThemeColors;
  final String? fontFamily;
  final bool isInbuilt;

  AppThemeData getLightTheme() {
    return AppThemeData(
      themeName: themeName,
      textColorScheme: lightThemeColors.textColorScheme,
      textStyle: AppTextStyle.customFontFamily(fontFamily ?? ''),
      iconColorScheme: lightThemeColors.iconColorScheme,
      borderColorScheme: lightThemeColors.borderColorScheme,
      badgeColorScheme: lightThemeColors.badgeColorScheme,
      backgroundColorScheme: lightThemeColors.backgroundColorScheme,
      fillColorScheme: lightThemeColors.fillColorScheme,
      surfaceColorScheme: lightThemeColors.surfaceColorScheme,
      borderRadius: AppSharedTokens.buildBorderRadius(),
      spacing: AppSharedTokens.buildSpacing(),
      shadow: AppSharedTokens.buildShadow(Brightness.light),
      brandColorScheme: brandColorScheme,
      surfaceContainerColorScheme: lightThemeColors.surfaceContainerColorScheme,
      otherColorsColorScheme: otherColorsColorScheme,
    );
  }

  AppThemeData getDarkTheme() {
    return AppThemeData(
      themeName: themeName,
      textColorScheme: darkThemeColors.textColorScheme,
      textStyle: AppTextStyle.customFontFamily(fontFamily ?? ''),
      iconColorScheme: darkThemeColors.iconColorScheme,
      borderColorScheme: darkThemeColors.borderColorScheme,
      badgeColorScheme: darkThemeColors.badgeColorScheme,
      backgroundColorScheme: darkThemeColors.backgroundColorScheme,
      fillColorScheme: darkThemeColors.fillColorScheme,
      surfaceColorScheme: darkThemeColors.surfaceColorScheme,
      borderRadius: AppSharedTokens.buildBorderRadius(),
      spacing: AppSharedTokens.buildSpacing(),
      shadow: AppSharedTokens.buildShadow(Brightness.dark),
      brandColorScheme: brandColorScheme,
      surfaceContainerColorScheme: darkThemeColors.surfaceContainerColorScheme,
      otherColorsColorScheme: otherColorsColorScheme,
    );
  }
}
