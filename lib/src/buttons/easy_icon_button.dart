import 'package:easy_actions/src/utils/utils.dart';
import 'package:flutter/material.dart';

class EasyIconButton extends StatelessWidget {
  /// [EasyIconButton] is a [ElevatedButton] with simple parameters
  /// which makes it easy to style this button.
  ///
  /// ```dart
  /// EasyIconButton(
  ///  icon: Icons.add,
  /// ),
  /// ```
  ///
  const EasyIconButton({
    Key? key,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.onPressed,
    this.hapticImpact = HapticImpact.none,
    this.iconWidget,
    this.enabled = true,
    this.size = 48,
    this.color,
    this.disabledColor,
    this.borderRadius,
    this.isRounded = false,
    this.margin,
    this.padding = const EdgeInsets.all(8),
    this.elevation,
  }) : super(key: key);

  /// Icon for your button
  final IconData? icon;

  /// Size of the icon
  final double? iconSize;

  /// Color of the icon
  final Color? iconColor;

  /// Callback for the button clicks
  final VoidCallback? onPressed;

  /// Haptic feedback on button tap
  final HapticImpact hapticImpact;

  /// Icon for the button
  final Widget? iconWidget;

  /// To enable/disable the button, default is true
  final bool enabled;

  /// Size of the button
  final double size;

  /// Button color, it will not work if the button is disabled
  final Color? color;

  /// Disabled button color
  final Color? disabledColor;

  /// Border radius for the button, it will not work
  /// if [isRounded] is given
  final double? borderRadius;

  /// For completely rounded button
  final bool isRounded;

  /// Button margin, default is [EdgeInsets.zero]
  final EdgeInsetsGeometry? margin;

  /// Button padding
  final EdgeInsetsGeometry padding;

  /// Elevation of the button
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        height: size,
        width: size,
        child: ElevatedButton(
          onPressed: enabled
              ? () {
                  mapHapticImpactToFeedback(hapticImpact);
                  onPressed?.call();
                }
              : null,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                isRounded
                    ? Utils.roundedRadius
                    : borderRadius ?? Utils.mediumRadius,
              ),
            ),
            primary: enabled ? color : (disabledColor ?? Utils.disabledColor),
            elevation: elevation,
            padding: padding,
          ),
          child: Center(
            child: iconWidget ??
                Icon(
                  icon,
                  size: iconSize,
                  color: iconColor,
                ),
          ),
        ),
      ),
    );
  }
}
