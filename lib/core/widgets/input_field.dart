import 'package:flutter/material.dart';
import 'package:temp_project/core/helpers/extensions.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final Color? backgroundColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final bool? obscureText;
  final TextEditingController? controller;
  final int? maxLines;
  final double? borderWidth;
  const InputField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.validator,
    this.backgroundColor,
    this.suffixIcon,
    this.prefixIcon,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.obscureText,
    this.controller,
    this.maxLines,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText ?? false,
      obscuringCharacter: '*',
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.surfaceDim,
          ),
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.surfaceDim,
            ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        fillColor:
            backgroundColor ?? Theme.of(context).colorScheme.primaryContainer,
        isDense: true,
        errorStyle: const TextStyle(
          color: Colors.red, // Ensure this matches the colorScheme.error
          fontSize: 12, // Default size for error text
        ),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.0.responsive(context),
              vertical: 18.0.responsive(context),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0.responsive(context)),
              borderSide: BorderSide(
                width: borderWidth ?? 0.3,
                color: Color(0xffDFE5F1),
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0.responsive(context)),
              borderSide: BorderSide(
                width: borderWidth ?? 0.3,
                color: Color(0xffDFE5F1),
              ),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0.responsive(context)),
              borderSide: const BorderSide(
                width: 0.7,
                color: Colors.red,
              ),
            ),
        focusedErrorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0.responsive(context)),
              borderSide: const BorderSide(
                width: 0.7,
                color: Colors.red,
              ),
            ),
      ),
    );
  }
}
