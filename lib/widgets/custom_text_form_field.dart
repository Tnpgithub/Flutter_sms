import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.enabled,
    this.borderColor,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;
  final bool? enabled;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;
  final Color? borderColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
    width: width ?? double.maxFinite,
    margin: margin,
    child: TextFormField(
      enabled:enabled?? true,
      controller: controller,
      // focusNode: focusNode ?? FocusNode(),
      autofocus: autofocus??false,

      style: textStyle ?? theme.textTheme.bodyLarge,
      obscureText: obscureText!,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
    ),
  );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray700,
    prefixIcon: prefix,
    // prefixIconConstraints: prefixConstraints,
    suffixIcon: suffix,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    prefix: prefix??SizedBox(
      width: 16.h,
    ),
    // errorStyle: TextStyle(height: 0),
    errorStyle: TextStyle(
      color: appTheme.red70001,
      fontSize: 14,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
    prefixIconConstraints: prefixConstraints??BoxConstraints(
        maxHeight: 56.v  ),

    // isDense: true,
    contentPadding: contentPadding ??
        EdgeInsets.only(
          left: 0,
          top: 17.h,
          right: 16.h,
          bottom: 18.h,
        ),
    fillColor: fillColor ?? appTheme.whiteA700,
    filled: filled,
    border: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(
            color: borderColor??appTheme.blueGray10001,
            width: 1,
          ),
        ),
    enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(
            color: appTheme.blueGray10001,
            width: 1,
          ),
        ),
    focusedBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.h),
      borderSide: BorderSide(
        color: appTheme.red70001,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.h),
      borderSide: BorderSide(
        color: appTheme.red70001,
        width: 1,
      ),
    ),
  );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get custom => OutlineInputBorder(
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide.none,
      );
}
