import 'package:theme_ui_widgets/theme_ui_widgets.dart';

abstract class AppThemeDataSetBuilder {
  const AppThemeDataSetBuilder();

  AppThemeData light();

  AppThemeData dark();
}