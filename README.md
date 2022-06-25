# Easy Actions

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

## Overview

A Flutter package for simple and easy to use actions like buttons, checkboxes and switches.

<div><img src="https://github.com/abhakhand/easy_actions/blob/main/assets/display.jpg?raw=true" width="200"/></div>

## Features

- Elevated Button
- Outlined Button
- Icon Button

## Getting Started

Add the `easy_actions` package as a dependency in your flutter project.

```yaml
dependencies:
  easy_actions: '^1.0.0'
```

## Usage

  ```dart
  import 'package:easy_actions/easy_actions.dart';
  ```

### Elevated Button

```dart
 EasyElevatedButton(
  label: 'Hello World!',
  isRounded: true,
  onPressed: () {},
),
```

### Outlined Button

```dart
 EasyOutlinedButton(
  label: 'Hello World!',
  isRounded: true,
  onPressed: () {},
),
```

### Icon Button

```dart
 EasyIconButton(
  icon: Icons.add,
  onPressed: () {},
),
```

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
