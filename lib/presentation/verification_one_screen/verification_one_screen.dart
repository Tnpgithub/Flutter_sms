import 'controller/verification_one_controller.dart';import 'package:flutter/material.dart';import 'package:student_app/core/app_export.dart';import 'package:student_app/widgets/app_bar/appbar_image_2.dart';import 'package:student_app/widgets/app_bar/appbar_title.dart';import 'package:student_app/widgets/app_bar/custom_app_bar.dart';import 'package:student_app/widgets/custom_elevated_button.dart';import 'package:student_app/widgets/custom_pin_code_text_field.dart';class VerificationOneScreen extends GetWidget<VerificationOneController> {const VerificationOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 21.v), decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), CustomAppBar(leadingWidth: 44.h, leading: AppbarImage2(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 6.v), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarTitle(text: "lbl_forgot_password".tr))])), Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v), child: Column(children: [Obx(() => CustomPinCodeTextField(context: context, margin: EdgeInsets.symmetric(horizontal: 1.h), controller: controller.otpController.value, onChanged: (value) {})), SizedBox(height: 57.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_didn_t_get_code2".tr, style: theme.textTheme.bodyLarge), TextSpan(text: " "), TextSpan(text: "lbl_resend_code".tr, style: CustomTextStyles.titleMediumNunitoSansPrimary)]), textAlign: TextAlign.left), SizedBox(height: 55.v), CustomElevatedButton(text: "lbl_continue".tr, onTap: () {onTapContinue();}), SizedBox(height: 5.v)]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the resetPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the resetPasswordScreen.
onTapContinue() { Get.toNamed(AppRoutes.resetPasswordScreen, ); } 
 }
