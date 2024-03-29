import 'package:easy_actions/src/utils/utils.dart';
import 'package:flutter/material.dart';

class EasyElevatedButton extends StatelessWidget {
  /// [EasyElevatedButton] is a [ElevatedButton] with simple parameters
  /// which makes it easy to style this button.
  ///
  /// Similar to a [ElevatedButton.icon] button, adding an icon
  /// is also possible in this button with some extra configurations.
  ///
  /// ```dart
  /// EasyElevatedButton(
  ///  label: 'Hello World!',
  /// ),
  /// ```
  ///
  const EasyElevatedButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.hapticImpact = HapticImpact.none,
    this.enabled = true,
    this.labelColor,
    this.labelStyle,
    this.height,
    this.width,
    this.color,
    this.disabledColor,
    this.icon,
    this.isTrailingIcon = false,
    this.borderRadius,
    this.isRounded = false,
    this.margin,
    this.padding,
    this.elevation,
    this.spaceBetweenChildren,
  }) : super(key: key);

  /// Label for your button
  final String label;

  /// Callback for the button clicks
  final VoidCallback? onPressed;

  /// Haptic feedback on button tap
  final HapticImpact hapticImpact;

  /// To enable/disable the button, default is true
  final bool enabled;

  /// Color of the label
  final Color? labelColor;

  /// [TextStyle] for the label in case the color is not sufficient
  final TextStyle? labelStyle;

  /// Height of the button
  final double? height;

  /// Width of the button
  final double? width;

  /// Button color, it will not work if the button is disabled
  final Color? color;

  /// Disabled button color
  final Color? disabledColor;

  /// Icon for the button
  final Widget? icon;

  /// Place the icon widget at trailing
  final bool isTrailingIcon;

  /// Border radius for the button, it will not work
  /// if [isRounded] is given
  final double? borderRadius;

  /// For completely rounded button
  final bool isRounded;

  /// Button margin, default is [EdgeInsets.zero]
  final EdgeInsetsGeometry? margin;

  /// Button padding
  final EdgeInsetsGeometry? padding;

  /// Elevation of the button
  final double? elevation;

  /// Padding between label and icon
  final double? spaceBetweenChildren;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        height: height,
        width: width,
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null && !isTrailingIcon) ...[
                icon!,
                SizedBox(
                  width: spaceBetweenChildren ?? 4,
                ),
              ],
              Flexible(
                child: Text(
                  label,
                  style: labelStyle ??
                      TextStyle(
                        color: labelColor,
                      ),
                ),
              ),
              if (icon != null && isTrailingIcon) ...[
                SizedBox(
                  width: spaceBetweenChildren ?? 4,
                ),
                icon!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
