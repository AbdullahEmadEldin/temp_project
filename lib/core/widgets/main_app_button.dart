import 'package:flutter/material.dart';
import 'package:temp_project/core/helpers/extensions.dart';

class MainButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final bool isLoading;
  const MainButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    this.isLoading = false,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 6.0),
          ),
        ),
        backgroundColor:
            WidgetStateProperty.resolveWith((final Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return backgroundColor ??
                Theme.of(context).colorScheme.primary.withOpacity(0.2);
          } else {
            return backgroundColor ?? Theme.of(context).colorScheme.primary;
          }
        }),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12.0.responsive(context),
            vertical:
                isLoading ? 0 : verticalPadding ?? 12.0.responsive(context),
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(
            buttonWidth ?? double.maxFinite,
            buttonHeight ?? 54.0.responsive(context),
          ),
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? CircularProgressIndicator(
              backgroundColor: Theme.of(context).colorScheme.onPrimary)
          : Text(
              buttonText,
              style: textStyle,
            ),
    );
  }
}
