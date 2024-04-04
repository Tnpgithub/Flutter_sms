import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/core/utils/validation_functions.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';
import 'package:student_app/widgets/custom_icon_button.dart';
import 'package:student_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.h, vertical: 44.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 3.v, right: 69.h),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 67.v,
                                  width: 68.h,
                                  padding: EdgeInsets.all(13.h),
                                  decoration:
                                  IconButtonStyleHelper.outlinePrimary,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgAirplane)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.h, top: 6.v),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_sign_up".tr,
                                                style: theme.textTheme
                                                    .headlineMedium),
                                            SizedBox(height: 7.v),
                                            Text(
                                                "msg_join_us_with_creating"
                                                    .tr,
                                                style:
                                                theme.textTheme.bodyLarge)
                                          ])))
                            ])),
                        SizedBox(height: 47.v),
                        CustomTextFormField(
                          autofocus: false,

                            // contentPadding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 40.h),
                            controller: controller.firstNameController,
                            hintText: "lbl_first_name".tr,
                            validator: (value) {
                              if (value == null ||
                                  (!isText(value, isRequired: true))) {
                                return "Please enter name";
                              }
                              return null;
                            }),
                        SizedBox(height: 24.v),



                        CustomTextFormField(
                          autofocus: false,
                            controller: controller.lastNameController,
                            hintText: "lbl_last_name".tr,
                            validator: (value) {
                              if (value == null ||
                                  (!isText(value, isRequired: true))) {
                                return "Please enter valid last name";
                              }
                              return null;
                            }),
                        SizedBox(height: 24.v),
                        CustomTextFormField(
                          autofocus: false,
                            controller: controller.phoneNumberController,
                            hintText: "lbl_phone_number".tr,
                            textInputType: TextInputType.phone,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPhone(value, isRequired: true))) {
                                return "Please enter valid phoneNumber";
                              }
                              return null;
                            }),
                        SizedBox(height: 24.v),
                        CustomTextFormField(
                          autofocus: false,
                            controller: controller.emailController,
                            hintText: "lbl_email".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            }),
                        SizedBox(height: 54.v),
                        CustomElevatedButton(text: "lbl_sign_up".tr,onTap: () {
                          if(_formKey.currentState!.validate()){
                            Get.toNamed(AppRoutes.selectRoleScreen);
                          }else{
                            print("not valid");
                          }
                        },),
                        Spacer(),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtDohaveaaccount();
                                },
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_do_have_a_account2".tr,
                                          style: theme.textTheme.bodyLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_log_in".tr,
                                          style: CustomTextStyles
                                              .titleMediumNunitoSansPrimary)
                                    ]),
                                    textAlign: TextAlign.left)))
                      ]))),
        ));
  }

  /// Navigates to the loginScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginScreen.
  onTapTxtDohaveaaccount() {
    Get.back();
  }
}
