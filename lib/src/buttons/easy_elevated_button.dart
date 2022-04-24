import 'package:easy_actions/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  ///  onPressed: () {},
  /// )
  ///
  const EasyElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.enabled = true,
    this.labelColor,
    this.labelStyle,
    this.height,
    this.width,
    this.color,
    this.icon,
    this.isTrailingIcon = false,
    this.borderRadius,
    this.isRounded = false,
    this.margin,
    this.elevation,
    this.haptics = false,
  }) : super(key: key);

  /// Label for your button
  final String label;

  /// Callback for the button clicks
  final VoidCallback onPressed;

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

  /// Icon for the button
  final Widget? icon;

  /// Place the icon widget at trailing
  final bool isTrailingIcon;

  /// Border radius for the button
  final double? borderRadius;

  /// For completely rounded button, it will not work
  /// if border radius is given
  final bool isRounded;

  /// Button margin, default is [EdgeInsets.zero]
  final EdgeInsetsGeometry? margin;

  /// Elevation of the button
  final double? elevation;

  /// To enable haptic feedback, default is false
  final bool haptics;

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
                  if (haptics) {
                    HapticFeedback.lightImpact();
                  }
                  onPressed();
                }
              : null,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                isRounded ? 100 : borderRadius ?? Utils.mediumBorderRadius,
              ),
            ),
            primary: enabled ? color : Utils.disabledColor,
            elevation: elevation,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null && !isTrailingIcon) ...[
                icon!,
                const SizedBox(
                  width: 4,
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
                const SizedBox(
                  width: 4,
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
