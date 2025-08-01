# Theme UI Widgets

A comprehensive Flutter theme management system that provides structured color schemes, typography, spacing, shadow definitions, and UI components for consistent app theming.

## Features

- 🎨 **Comprehensive Color System**: Brand colors, semantic colors (success, warning, error), surface colors, and text colors
- 📝 **Typography System**: Structured text styles with consistent sizing and weights
- 📏 **Spacing System**: Consistent spacing values for padding, margins, and layout
- 🌟 **Shadow Definitions**: Pre-defined shadow styles for elevation
- 🎭 **Animated Theme Switching**: Smooth transitions between themes
- 🧩 **UI Components**: Ready-to-use themed widgets like dropdowns
- 🏗️ **Theme Builder**: Utilities to build and customize themes
- 📱 **Platform Font Scaling**: Responsive typography that adapts to platform settings

## Getting Started

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  theme_ui_widgets:
    git:
      url: https://github.com/anshra1/theme_ui_widgets.git
      ref: master
```

Then run:
```bash
flutter pub get
```

## Usage

### Basic Theme Setup

```dart
import 'package:theme_ui_widgets/theme_ui_widgets.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: AppDefaultTheme.light, // or AppDefaultTheme.dark
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
```

### Using Theme Colors

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    
    return Container(
      color: theme.colorScheme.surface.primary,
      child: Text(
        'Hello World',
        style: theme.textStyle.body.medium.copyWith(
          color: theme.colorScheme.text.primary,
        ),
      ),
    );
  }
}
```

### Custom Theme Creation

```dart
final customTheme = AppThemeData(
  colorScheme: ColorScheme(
    // Define your color schemes
    brand: BrandColorScheme(
      primary: Colors.blue,
      secondary: Colors.green,
    ),
    surface: SurfaceColorScheme(
      primary: Colors.white,
      secondary: Colors.grey[100]!,
      // ... more colors
    ),
    // ... other color schemes
  ),
  textStyle: DefaultTextStyle(
    // Define your text styles
  ),
  spacing: Spacing(
    // Define spacing values
  ),
  // ... other theme properties
);
```

### Using UI Components

```dart
AppDropdownWidget<String>(
  items: ['Option 1', 'Option 2', 'Option 3'],
  onChanged: (value) {
    print('Selected: $value');
  },
  hint: 'Select an option',
)
```

## Theme Structure

The theme system is organized into several key areas:

### Color Schemes

- **Brand Colors**: Primary and secondary brand colors
- **Surface Colors**: Background and surface colors
- **Text Colors**: Various text color variants
- **Semantic Colors**: Success, warning, error, info colors
- **Border Colors**: Border and outline colors
- **Fill Colors**: Button and component fill colors

### Typography

- **Display Styles**: Large heading styles
- **Headline Styles**: Section headings
- **Title Styles**: Subsection titles
- **Body Styles**: Regular content text
- **Label Styles**: Form labels and captions

### Spacing & Layout

- **Spacing**: Consistent padding and margin values
- **Border Radius**: Consistent corner radius values
- **Shadows**: Elevation and shadow definitions

## Customization

You can extend or customize any part of the theme system:

```dart
// Extend existing themes
final myTheme = AppDefaultTheme.light.copyWith(
  colorScheme: AppDefaultTheme.light.colorScheme.copyWith(
    brand: BrandColorScheme(
      primary: Colors.purple,
      secondary: Colors.amber,
    ),
  ),
);

// Create completely custom themes
final customTheme = AppThemeDataBuilder()
  .withBrandColors(
    primary: Colors.indigo,
    secondary: Colors.teal,
  )
  .withSpacing(small: 8, medium: 16, large: 24)
  .build();
```

## Architecture

This package follows a structured approach to theming:

1. **Theme Data**: Core theme definitions with all styling information
2. **Theme Providers**: Context-based theme access throughout the widget tree
3. **Theme Builders**: Utilities for creating and customizing themes
4. **Animated Themes**: Smooth transitions between different themes
5. **UI Components**: Pre-styled widgets that automatically use theme values

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.