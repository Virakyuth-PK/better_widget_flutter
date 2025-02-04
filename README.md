# better\_widget_flutter

A collection of enhanced Flutter widgets to improve development efficiency and maintainability. The `better_widget_flutter` package provides a set of customizable and reusable widgets, making UI development faster and more consistent.

## Features

- **Better Snackbar** - Customizable and enhanced Snackbar.
- **Better Spacing** - Utilities for consistent spacing.
- **Better Container Decoration** - Predefined decoration utilities.
- **Better Button** - Enhanced button with customizable styles.
- **Better Future Builder** - A more efficient and readable FutureBuilder.
- **Better Label** - Predefined label styles for better text consistency.
- **Better Network Image** - Optimized image loading with placeholders and caching.
- **Better Section** - A structured section component for better UI organization.
- **Better Modal Bottom Sheet Open Image** - A predefined modal bottom sheet for image viewing.

## Text Utilities

- **Better Text Size** - Consistent text size management.
- **Better Text Field** - Enhanced text field with additional customization options.

## Paging Utilities

- **Better Empty Data** - A predefined widget for displaying empty data states.
- **Better List Grid Shimmer** - A shimmer effect for lists and grids.
- **Better Paging Builder Delegate** - A customizable delegate for implementing paginated lists.

## Installation

Add the following dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  better_widget_flutter: 
	git: https://github.com/Virakyuth-PK/better_widget_flutter.git
	version: latest_git_branh || main
```

## Usage

```dart
import 'package:better_widget_flutter/better_button.dart';

BetterButton(
  text: 'Click Me',
  onPressed: () {
    print('Button Pressed');
  },
);
```

## Contribution

Contributions are welcome! Feel free to submit a pull request or open an issue for feature requests or bug reports.

## License

This package is released under the MIT License.
