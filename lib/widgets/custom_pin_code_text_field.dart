import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.margin,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: 4,
          keyboardType: TextInputType.number,
          textStyle: textStyle ?? theme.textTheme.bodyLarge,
          hintStyle: hintStyle ?? theme.textTheme.bodyLarge,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          enableActiveFill: true,
          pinTheme: PinTheme(
            fieldHeight: 50.h,
            fieldWidth: 51.h,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(8.h),
            inactiveColor: appTheme.gray40001,
            activeColor: appTheme.gray40001,
            inactiveFillColor: appTheme.whiteA700,
            activeFillColor: appTheme.whiteA700,
            selectedColor: Colors.transparent,
          ),
          onChanged: (value) => onChanged(value),
          validator: validator,
        ),
      );
}
