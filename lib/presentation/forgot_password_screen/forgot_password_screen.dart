import '../../widgets/custom_appBar.dart';
import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/core/utils/validation_functions.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';
import 'package:student_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
        appBar: customAppBarSecond(
          appBarColor: Colors.transparent,
          height: 0,
        ),
        body: Form(
            key: _formKey,
            child: Column(children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 21.v),
                  decoration: AppDecoration.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        CustomAppBar(
                            leadingWidth: 44.h,
                            leading: AppbarImage2(
                                svgPath: ImageConstant.imgArrowleft,
                                margin: EdgeInsets.only(
                                    left: 20.h, top: 3.v, bottom: 6.v),
                                onTap: () {
                                  onTapArrowleftone();
                                }),
                            centerTitle: true,
                            title: AppbarTitle(
                                text: "lbl_forgot_password".tr))
                      ])),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20.h, vertical: 40.v),
                  child: Column(children: [
                    CustomTextFormField(
                      autofocus: false,
                        controller: controller.emailController,
                        hintText: "msg_enter_email_address".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value,
                                  isRequired: true))) {
                            return "Please enter valid email";
                          }
                          return null;
                        },
                        // contentPadding: EdgeInsets.symmetric(
                        //     horizontal: 12.h, vertical: 17.v)
                          ),
                    SizedBox(height: 54.v),
                    CustomElevatedButton(
                        text: "lbl_continue".tr,
                        onTap: () {
                          if(_formKey.currentState!.validate()){
                            onTapContinue();
                          }else{
                            print("email not valid");
                          }
                        }),
                    SizedBox(height: 5.v)
                  ]))
            ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the verificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the verificationScreen.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }
}
