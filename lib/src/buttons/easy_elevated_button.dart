import 'package:easy_actions/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EasyElevatedButton extends StatelessWidget {
  const EasyElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.enabled = true,
    this.labelColor,
    this.labelStyle,
    this.height,
    this.width,
    this.isShortHeight = false,
    this.color,
    this.icon,
    this.isTrailingIcon = false,
    this.borderRadius,
    this.isRounded = false,
    this.elevation,
    this.haptics = false,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool enabled;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final double? height;
  final double? width;
  final bool isShortHeight;
  final Color? color;
  final Widget? icon;
  final bool isTrailingIcon;
  final double? borderRadius;
  final bool isRounded;
  final double? elevation;
  final bool haptics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              isRounded ? 100 : borderRadius ?? Utils.baseBorderRadius,
            ),
          ),
          primary: enabled ? color : Utils.disabledButtonColor,
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
    );
  }
}
