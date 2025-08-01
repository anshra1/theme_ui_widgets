import 'package:theme_ui_widgets/src/theme/models/import_theme_color_set.dart';

abstract class AppImportThemeColorSetBuilder {
  const AppImportThemeColorSetBuilder();

  ImportThemeColorSet light();

  ImportThemeColorSet dark();
}
