import 'controller/login_fill_controller.dart';import 'package:flutter/material.dart';import 'package:student_app/core/app_export.dart';import 'package:student_app/core/utils/validation_functions.dart';import 'package:student_app/widgets/custom_elevated_button.dart';import 'package:student_app/widgets/custom_icon_button.dart';import 'package:student_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class LoginFillScreen extends GetWidget<LoginFillController> {LoginFillScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 45.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 2.v, right: 49.h), child: Row(children: [CustomIconButton(height: 67.v, width: 68.h, padding: EdgeInsets.all(13.h), decoration: IconButtonStyleHelper.outlinePrimary, child: CustomImageView(svgPath: ImageConstant.imgAirplane)), Expanded(child: Padding(padding: EdgeInsets.only(left: 20.h, top: 6.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_log_in".tr, style: theme.textTheme.headlineMedium), SizedBox(height: 7.v), Text("msg_hello_welcome_back".tr, style: theme.textTheme.bodyLarge)])))])), SizedBox(height: 47.v), CustomTextFormField(controller: controller.emailController, hintText: "msg_michellerivera_gmail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;}), SizedBox(height: 24.v), Obx(() => CustomTextFormField(controller: controller.checkmarkController, textInputAction: TextInputAction.done, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v), child: CustomImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgCheckmark : ImageConstant.imgCheckmark))), suffixConstraints: BoxConstraints(maxHeight: 54.v), obscureText: controller.isShowPassword.value)), SizedBox(height: 19.v), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtForgotpassword();}, child: Text("msg_forgot_password".tr, style: theme.textTheme.bodyLarge))), SizedBox(height: 54.v), CustomElevatedButton(text: "lbl_log_in".tr, onTap: () {onTapLogin();}), Spacer(), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtDonthaveanaccount();}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_an_account2".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.titleMediumNunitoSansPrimary)]), textAlign: TextAlign.left)))]))))); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgotPasswordScreen.
onTapTxtForgotpassword() { Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
/// Navigates to the selectRoleScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the selectRoleScreen.
onTapLogin() { Get.toNamed(AppRoutes.selectRoleScreen, ); } 
/// Navigates to the signUpScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the signUpScreen.
onTapTxtDonthaveanaccount() { Get.toNamed(AppRoutes.signUpScreen, ); } 
 }
