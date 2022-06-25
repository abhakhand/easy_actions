import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Utilities
class Utils {
  const Utils._();

  static const smallRadius = 4.0;
  static const mediumRadius = 8.0;
  static const largeRadius = 12.0;

  static const roundedRadius = 100.0;

  static const disabledColor = Colors.grey;
}

enum HapticImpact { none, light, heavy, vibrate }

Future<void> mapHapticImpactToFeedback(HapticImpact impact) async {
  switch (impact) {
    case HapticImpact.none:
      break;
    case HapticImpact.light:
      await HapticFeedback.lightImpact();
      break;
    case HapticImpact.heavy:
      await HapticFeedback.heavyImpact();
      break;
    case HapticImpact.vibrate:
      await HapticFeedback.vibrate();
      break;
  }
}
