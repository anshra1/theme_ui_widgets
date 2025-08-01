import 'dart:ui';

import 'package:theme_ui_widgets/src/theme/builder/app_theme_data_builder.dart';
import 'package:theme_ui_widgets/src/theme/models/app_theme_set.dart';
import 'package:theme_ui_widgets/theme_ui_widgets.dart';

class AppDefaultTheme implements AppThemeDataSetBuilder {
  @override
  AppThemeData light({String? fontFamily}) {
    final textColorScheme = AppTextColorScheme(
      primary: AppPrimitiveTokens.neutral1000,
      secondary: AppPrimitiveTokens.neutral600,
      tertiary: AppPrimitiveTokens.neutral500,
      quaternary: AppPrimitiveTokens.neutral200,
      onFill: AppPrimitiveTokens.neutralWhite,
      action: AppPrimitiveTokens.blue600,
      actionHover: AppPrimitiveTokens.blue700,
      info: AppPrimitiveTokens.blue600,
      infoHover: AppPrimitiveTokens.blue700,
      success: AppPrimitiveTokens.green600,
      successHover: AppPrimitiveTokens.green700,
      warning: AppPrimitiveTokens.orange600,
      warningHover: AppPrimitiveTokens.orange700,
      error: AppPrimitiveTokens.red600,
      errorHover: AppPrimitiveTokens.red700,
      featured: AppPrimitiveTokens.purple500,
      featuredHover: AppPrimitiveTokens.purple600,
    );

    final iconColorScheme = AppIconColorScheme(
      primary: AppPrimitiveTokens.neutral1000,
      secondary: AppPrimitiveTokens.neutral600,
      tertiary: AppPrimitiveTokens.neutral400,
      quaternary: AppPrimitiveTokens.neutral200,
      infoThick: AppPrimitiveTokens.blue600,
      infoThickHover: AppPrimitiveTokens.blue700,
      successThick: AppPrimitiveTokens.green600,
      successThickHover: AppPrimitiveTokens.green700,
      warningThick: AppPrimitiveTokens.orange600,
      warningThickHover: AppPrimitiveTokens.orange700,
      errorThick: AppPrimitiveTokens.red600,
      errorThickHover: AppPrimitiveTokens.red700,
      featuredThick: AppPrimitiveTokens.purple500,
      featuredThickHover: AppPrimitiveTokens.purple600,
      onFill: AppPrimitiveTokens.neutralWhite,
    );

    final borderColorScheme = AppBorderColorScheme(
      primary: AppPrimitiveTokens.neutral200,
      primaryHover: AppPrimitiveTokens.neutral300,
      secondary: AppPrimitiveTokens.neutral800,
      secondaryHover: AppPrimitiveTokens.neutral700,
      tertiary: AppPrimitiveTokens.neutral1000,
      tertiaryHover: AppPrimitiveTokens.neutral900,
      themeThick: AppPrimitiveTokens.blue500,
      themeThickHover: AppPrimitiveTokens.blue600,
      infoThick: AppPrimitiveTokens.blue500,
      infoThickHover: AppPrimitiveTokens.blue600,
      successThick: AppPrimitiveTokens.green600,
      successThickHover: AppPrimitiveTokens.green700,
      warningThick: AppPrimitiveTokens.orange600,
      warningThickHover: AppPrimitiveTokens.orange700,
      errorThick: AppPrimitiveTokens.red600,
      errorThickHover: AppPrimitiveTokens.red700,
      featuredThick: AppPrimitiveTokens.purple500,
      featuredThickHover: AppPrimitiveTokens.purple600,
    );

    final fillColorScheme = AppFillColorScheme(
      primary: AppPrimitiveTokens.neutral100,
      primaryHover: AppPrimitiveTokens.neutral200,
      secondary: AppPrimitiveTokens.neutral300,
      secondaryHover: AppPrimitiveTokens.neutral400,
      tertiary: AppPrimitiveTokens.neutral600,
      tertiaryHover: AppPrimitiveTokens.neutral500,
      quaternary: AppPrimitiveTokens.neutral1000,
      quaternaryHover: AppPrimitiveTokens.neutral900,
      content: AppPrimitiveTokens.neutralAlphaWhite0,
      contentHover: AppPrimitiveTokens.neutralAlphaGrey100005,
      contentVisible: AppPrimitiveTokens.neutralAlphaGrey100005,
      contentVisibleHover: AppPrimitiveTokens.neutralAlphaGrey100010,
      themeThick: AppPrimitiveTokens.blue500,
      themeThickHover: AppPrimitiveTokens.blue600,
      themeSelect: AppPrimitiveTokens.blueAlphaBlue50015,
      textSelect: AppPrimitiveTokens.blueAlphaBlue50020,
      infoLight: AppPrimitiveTokens.blue100,
      infoLightHover: AppPrimitiveTokens.blue200,
      infoThick: AppPrimitiveTokens.blue500,
      infoThickHover: AppPrimitiveTokens.blue600,
      successLight: AppPrimitiveTokens.green100,
      successLightHover: AppPrimitiveTokens.green200,
      warningLight: AppPrimitiveTokens.orange100,
      warningLightHover: AppPrimitiveTokens.orange200,
      errorLight: AppPrimitiveTokens.red100,
      errorLightHover: AppPrimitiveTokens.red200,
      errorThick: AppPrimitiveTokens.red600,
      errorThickHover: AppPrimitiveTokens.red700,
      errorSelect: AppPrimitiveTokens.redAlphaRed50010,
      featuredLight: AppPrimitiveTokens.purple100,
      featuredLightHover: AppPrimitiveTokens.purple200,
      featuredThick: AppPrimitiveTokens.purple500,
      featuredThickHover: AppPrimitiveTokens.purple600,
    );

    final surfaceColorScheme = AppSurfaceColorScheme(
      primary: AppPrimitiveTokens.neutralWhite,
      primaryHover: AppPrimitiveTokens.neutral100,
      layer01: AppPrimitiveTokens.neutralWhite,
      layer01Hover: AppPrimitiveTokens.neutral100,
      layer02: AppPrimitiveTokens.neutralWhite,
      layer02Hover: AppPrimitiveTokens.neutral100,
      layer03: AppPrimitiveTokens.neutralWhite,
      layer03Hover: AppPrimitiveTokens.neutral100,
      layer04: AppPrimitiveTokens.neutralWhite,
      layer04Hover: AppPrimitiveTokens.neutral100,
      inverse: AppPrimitiveTokens.neutral1000,
      secondary: AppPrimitiveTokens.neutral1000,
      overlay: AppPrimitiveTokens.neutralAlphaBlack60,
    );

    final surfaceContainerColorScheme = AppSurfaceContainerColorScheme(
      layer01: AppPrimitiveTokens.neutral100,
      layer02: AppPrimitiveTokens.neutral200,
      layer03: AppPrimitiveTokens.neutral300,
    );

    final backgroundColorScheme = AppBackgroundColorScheme(
      primary: AppPrimitiveTokens.neutralWhite,
    );

    const otherColorsColorScheme = AppOtherColorsColorScheme(
      textHighlight: Color(0xFF00B5FF),
    );

    return AppThemeData(
      themeName: 'default Theme',
      textColorScheme: textColorScheme,
      borderColorScheme: borderColorScheme,
      fillColorScheme: fillColorScheme,
      surfaceColorScheme: surfaceColorScheme,
      backgroundColorScheme: backgroundColorScheme,
      iconColorScheme: iconColorScheme,
      surfaceContainerColorScheme: surfaceContainerColorScheme,
      badgeColorScheme: const AppBadgeColorScheme(badgeColors: []),
      textStyle: AppTextStyle.customFontFamily(fontFamily ?? ''),
      borderRadius: AppSharedTokens.buildBorderRadius(),
      spacing: AppSharedTokens.buildSpacing(),
      shadow: AppSharedTokens.buildShadow(Brightness.light),
      brandColorScheme: brandColorScheme,
      otherColorsColorScheme: otherColorsColorScheme,
    );
  }

  @override
  AppThemeData dark({String? fontFamily}) {
    final textColorScheme = AppTextColorScheme(
      primary: AppPrimitiveTokens.neutral200,
      secondary: AppPrimitiveTokens.neutral500,
      tertiary: AppPrimitiveTokens.neutral600,
      quaternary: AppPrimitiveTokens.neutral1000,
      onFill: AppPrimitiveTokens.neutralWhite,
      action: AppPrimitiveTokens.blue500,
      actionHover: AppPrimitiveTokens.blue400,
      info: AppPrimitiveTokens.blue500,
      infoHover: AppPrimitiveTokens.blue400,
      success: AppPrimitiveTokens.green600,
      successHover: AppPrimitiveTokens.green500,
      warning: AppPrimitiveTokens.orange600,
      warningHover: AppPrimitiveTokens.orange500,
      error: AppPrimitiveTokens.red500,
      errorHover: AppPrimitiveTokens.red400,
      featured: AppPrimitiveTokens.purple500,
      featuredHover: AppPrimitiveTokens.purple400,
    );

    final iconColorScheme = AppIconColorScheme(
      primary: AppPrimitiveTokens.neutral200,
      secondary: AppPrimitiveTokens.neutral400,
      tertiary: AppPrimitiveTokens.neutral600,
      quaternary: AppPrimitiveTokens.neutral1000,
      infoThick: AppPrimitiveTokens.blue500,
      infoThickHover: AppPrimitiveTokens.blue400,
      successThick: AppPrimitiveTokens.green600,
      successThickHover: AppPrimitiveTokens.green500,
      warningThick: AppPrimitiveTokens.orange600,
      warningThickHover: AppPrimitiveTokens.orange500,
      errorThick: AppPrimitiveTokens.red500,
      errorThickHover: AppPrimitiveTokens.red400,
      featuredThick: AppPrimitiveTokens.purple500,
      featuredThickHover: AppPrimitiveTokens.purple400,
      onFill: AppPrimitiveTokens.neutralWhite,
    );

    final borderColorScheme = AppBorderColorScheme(
      primary: AppPrimitiveTokens.neutral800,
      primaryHover: AppPrimitiveTokens.neutral700,
      secondary: AppPrimitiveTokens.neutral300,
      secondaryHover: AppPrimitiveTokens.neutral200,
      tertiary: AppPrimitiveTokens.neutral100,
      tertiaryHover: AppPrimitiveTokens.neutralWhite,
      themeThick: AppPrimitiveTokens.blue500,
      themeThickHover: AppPrimitiveTokens.blue600,
      infoThick: AppPrimitiveTokens.blue500,
      infoThickHover: AppPrimitiveTokens.blue400,
      successThick: AppPrimitiveTokens.green600,
      successThickHover: AppPrimitiveTokens.green500,
      warningThick: AppPrimitiveTokens.orange600,
      warningThickHover: AppPrimitiveTokens.orange500,
      errorThick: AppPrimitiveTokens.red500,
      errorThickHover: AppPrimitiveTokens.red400,
      featuredThick: AppPrimitiveTokens.purple500,
      featuredThickHover: AppPrimitiveTokens.purple400,
    );

    final fillColorScheme = AppFillColorScheme(
      primary: AppPrimitiveTokens.neutral900,
      primaryHover: AppPrimitiveTokens.neutral800,
      secondary: AppPrimitiveTokens.neutral600,
      secondaryHover: AppPrimitiveTokens.neutral500,
      tertiary: AppPrimitiveTokens.neutral300,
      tertiaryHover: AppPrimitiveTokens.neutral200,
      quaternary: AppPrimitiveTokens.neutral100,
      quaternaryHover: AppPrimitiveTokens.neutralWhite,
      content: AppPrimitiveTokens.neutralAlphaWhite0,
      contentHover: AppPrimitiveTokens.neutralAlphaGrey10005,
      contentVisible: AppPrimitiveTokens.neutralAlphaGrey10005,
      contentVisibleHover: AppPrimitiveTokens.neutralAlphaGrey10010,
      themeThick: AppPrimitiveTokens.blue500,
      themeThickHover: AppPrimitiveTokens.blue600,
      themeSelect: AppPrimitiveTokens.blueAlphaBlue50015,
      textSelect: AppPrimitiveTokens.blueAlphaBlue50020,
      infoLight: AppPrimitiveTokens.blue200,
      infoLightHover: AppPrimitiveTokens.blue100,
      infoThick: AppPrimitiveTokens.blue500,
      infoThickHover: AppPrimitiveTokens.blue400,
      successLight: AppPrimitiveTokens.green200,
      successLightHover: AppPrimitiveTokens.green100,
      warningLight: AppPrimitiveTokens.orange200,
      warningLightHover: AppPrimitiveTokens.orange100,
      errorSelect: AppPrimitiveTokens.redAlphaRed50010,
      featuredLight: AppPrimitiveTokens.purple200,
      featuredLightHover: AppPrimitiveTokens.purple100,
      featuredThick: AppPrimitiveTokens.purple500,
      featuredThickHover: AppPrimitiveTokens.purple400,
      errorLight: AppPrimitiveTokens.red200,
      errorLightHover: AppPrimitiveTokens.red100,
      errorThick: AppPrimitiveTokens.red500,
      errorThickHover: AppPrimitiveTokens.red400,
    );

    final surfaceColorScheme = AppSurfaceColorScheme(
      primary: AppPrimitiveTokens.neutral900,
      primaryHover: AppPrimitiveTokens.neutral800,
      layer01: AppPrimitiveTokens.neutral900,
      layer01Hover: AppPrimitiveTokens.neutral800,
      layer02: AppPrimitiveTokens.neutral850,
      layer02Hover: AppPrimitiveTokens.neutral800,
      layer03: AppPrimitiveTokens.neutral850,
      layer03Hover: AppPrimitiveTokens.neutral800,
      layer04: AppPrimitiveTokens.neutral830,
      layer04Hover: AppPrimitiveTokens.neutral800,
      inverse: AppPrimitiveTokens.neutral800,
      secondary: AppPrimitiveTokens.neutral800,
      overlay: AppPrimitiveTokens.neutralAlphaBlack60,
    );

    final surfaceContainerColorScheme = AppSurfaceContainerColorScheme(
      layer01: AppPrimitiveTokens.neutral900,
      layer02: AppPrimitiveTokens.neutral800,
      layer03: AppPrimitiveTokens.neutral700,
    );

    final backgroundColorScheme = AppBackgroundColorScheme(
      primary: AppPrimitiveTokens.neutral1000,
    );

    return AppThemeData(
      themeName: 'default Theme',
      textColorScheme: textColorScheme,
      borderColorScheme: borderColorScheme,
      fillColorScheme: fillColorScheme,
      surfaceColorScheme: surfaceColorScheme,
      backgroundColorScheme: backgroundColorScheme,
      iconColorScheme: iconColorScheme,
      surfaceContainerColorScheme: surfaceContainerColorScheme,
      badgeColorScheme: const AppBadgeColorScheme(badgeColors: []),
      textStyle: AppTextStyle.customFontFamily(fontFamily ?? ''),
      borderRadius: AppSharedTokens.buildBorderRadius(),
      spacing: AppSharedTokens.buildSpacing(),
      shadow: AppSharedTokens.buildShadow(Brightness.light),
      brandColorScheme: brandColorScheme,
      otherColorsColorScheme: otherColorsColorScheme,
    );
  }
}
