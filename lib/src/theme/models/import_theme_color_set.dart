// Last AI Edit: 2024-03-19
// AI Modified: Added comprehensive documentation for ImportThemeColorSet class

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme_ui_widgets/theme_ui_widgets.dart';

part 'import_theme_color_set.freezed.dart';
part 'import_theme_color_set.g.dart';

/// @component ImportThemeColorSet
/// @category Model
/// @created 2024-03-19
/// @lastModified 2024-03-19
///
/// @description
/// An intermediate model class that acts as a bridge between JSON theme files and AppThemeData.
/// Used by ThemeSetDecoder to parse and validate theme color schemes from .theme_design files.
/// This model represents the raw color scheme data before it's converted into the final AppThemeSet.
///
/// @theme_data_flow
/// The theme system follows this flow:
/// 1. JSON Files (.theme_design/light.json, dark.json)
/// 2. ImportThemeColorSet (this class - intermediate validation layer)
/// 3. AppThemeSet (contains light/dark ImportThemeColorSet instances)
/// 4. AppThemeData (final theme data used by widgets)
///
/// @when_to_use
/// This class is used in several key scenarios:
/// 1. Theme Import: When importing theme files from .theme_design directories
/// 2. Theme Validation: During theme validation to ensure all required colors are present
/// 3. Theme Building: When creating default or custom themes programmatically
/// 4. Theme Conversion: As an intermediate step before creating AppThemeData
///
/// @usage_flow
/// 1. Theme File Import:
///    ```dart
///    // ThemeSetDecoder reads JSON files
///    final jsonData = jsonDecode(themeFile.readAsString());
///    final processedJson = HexColorConverter.convertHexColorsInJson(jsonData);
///    final themeColors = ImportThemeColorSet.fromJson(processedJson);
///    ```
///
/// 2. Theme Validation:
///    ```dart
///    // ThemeSetDecoder validates all color schemes
///    void _validateThemeColors(ImportThemeColorSet themeColors) {
///      _validateTextColorScheme(themeColors.textColorScheme);
///      _validateIconColorScheme(themeColors.iconColorScheme);
///      // ... validate other color schemes
///    }
///    ```
///
/// 3. Theme Building:
///    ```dart
///    // Used by AppThemeColorSetBuilder implementations
///    class AppDefaultTheme implements AppThemeColorSetBuilder {
///      @override
///      ImportThemeColorSet light() {
///        return ImportThemeColorSet(
///          themeName: 'default Theme',
///          textColorScheme: textColorScheme,
///          // ... other color schemes
///        );
///      }
///    }
///    ```
///
/// 4. Theme Conversion:
///    ```dart
///    // Used by AppThemeSet to create final theme data
///    AppThemeData getLightTheme() {
///      return AppThemeData(
///        themeName: themeName,
///        textColorScheme: lightThemeColors.textColorScheme,
///        // ... other properties
///      );
///    }
///    ```
///
/// @initialization
/// ```dart
/// // Created from JSON
/// final themeSet = ImportThemeColorSet.fromJson(jsonMap);
///
/// // Created directly
/// final themeSet = ImportThemeColorSet(
///   themeName: 'MyTheme',
///   textColorScheme: textScheme,
///   iconColorScheme: iconScheme,
///   // ... other required color schemes
/// );
/// ```
///
/// @How to use
/// ```dart
/// // Typically used in theme decoding process:
/// final jsonData = jsonDecode(fileContent);
/// final processedJson = HexColorConverter.convertHexColorsInJson(jsonData);
/// final themeColors = ImportThemeColorSet.fromJson(processedJson);
/// ```
///
/// @method
/// - fromJson(): Creates instance from JSON map
/// - toJson(): Converts instance to JSON (generated)
///
/// @important
/// - All color schemes are required fields
/// - Used as part of the theme system's JSON import process
/// - Color values should be processed by HexColorConverter before parsing
/// - Each color scheme must follow strict validation rules:
///   * TextColorScheme: primary, secondary, tertiary, quaternary, etc.
///   * IconColorScheme: primary, secondary, tertiary, quaternary, etc.
///   * BorderColorScheme: primary, primaryHover, secondary, etc.
///   * BadgeColorScheme: At least one badge color with variants
///   * BackgroundColorScheme: primary
///   * FillColorScheme: primary, secondary, tertiary, quaternary, etc.
///   * SurfaceColorScheme: primary, layer01-04, inverse, etc.
///   * SurfaceContainerColorScheme: layer01-03
///
/// @errors
/// - JSON parsing errors if color scheme format is invalid
/// - Missing required fields will throw during construction
/// - Color validation errors if hex codes are invalid
/// - Theme validation errors if required colors are missing
///
/// @testing
/// Test file not found. Expected location:
/// test/features/setting/workspace/models/import_theme_color_set_test.dart
///
/// @relatedComponents
/// - ThemeSetDecoder: Uses this model to decode theme files
/// - AppThemeSet: Contains light/dark ImportThemeColorSet instances
/// - HexColorConverter: Processes colors before JSON parsing
/// - AppThemeData: Final theme data created from ImportThemeColorSet
/// - AppThemeColorSetBuilder: Interface for theme builders
/// - AppearanceCubit: Manages AppThemeSet instances that contain this class
/// 
///    JSON Files ->   JSON Files -> ImportThemeColorSet  -> AppThemeSet -> AppThemeSet -> 

@freezed
class ImportThemeColorSet with _$ImportThemeColorSet {
  const factory ImportThemeColorSet({
    required String themeName,
    required AppTextColorScheme textColorScheme,
    required AppIconColorScheme iconColorScheme,
    required AppBorderColorScheme borderColorScheme,
    required AppBadgeColorScheme badgeColorScheme,
    required AppBackgroundColorScheme backgroundColorScheme,
    required AppFillColorScheme fillColorScheme,
    required AppSurfaceColorScheme surfaceColorScheme,
    required AppSurfaceContainerColorScheme surfaceContainerColorScheme,
  }) = _ImportThemeColorSet;

  factory ImportThemeColorSet.fromJson(Map<String, dynamic> json) =>
      _$ImportThemeColorSetFromJson(json);
}
