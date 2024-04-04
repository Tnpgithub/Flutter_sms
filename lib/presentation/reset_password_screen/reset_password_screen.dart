import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';
import 'package:student_app/widgets/custom_text_form_field.dart';
import 'package:student_app/presentation/pop_up_dialog/pop_up_dialog.dart';
import 'package:student_app/presentation/pop_up_dialog/controller/pop_up_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
            key: _formKey,
            child: SizedBox(
                width: double.maxFinite,
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
                                  text: "Reset Password".tr))
                         ])),
                 Container(
                     padding: EdgeInsets.symmetric(
                         horizontal: 20.h, vertical: 40.v),
                     child: Column(children: [
                       Obx(() => CustomTextFormField(
                           autofocus: false,
                           // borderColor: Colors.red,
                           controller: controller.newpasswordController,
                           hintText: "New Password".tr,
                           textInputAction: TextInputAction.next,
                           textInputType: TextInputType.visiblePassword,
                           suffix: GestureDetector(
                               onTap: () {
                                 controller.isShowPassword.value =
                                 !controller.isShowPassword.value;
                               },
                               child: Container(
                                 margin:
                                 EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                                 child: CustomImageView(
                                     imagePath: controller.isShowPassword.value
                                         ? ImageConstant.eyesfill
                                         : ImageConstant.eyesOpen),
                               )),
                           suffixConstraints: BoxConstraints(maxHeight: 54.v),
                           validator: (value) {


                             if (value! .isEmpty) {
                               return "Please enter valid password";
                             }
                             return null;
                             // if (value == null ||
                             //     (!isValidPassword(value,
                             //         isRequired: true))) {
                             //   return "Please enter valid password";
                             // }
                             // return null;
                           },
                           obscureText: controller.isShowPassword.value,
                           // contentPadding: EdgeInsets.only(
                           //     left: 16.h, top: 16.v, bottom: 16.v),
                           // borderDecoration: TextFormFieldStyleHelper.custom,
                           filled: false)),
                      SizedBox(height: 24.v),
                       // Obx(() => CustomTextFormField(
                       //     autofocus: false,
                       //     textInputAction: TextInputAction.next,
                       //     controller: controller.newpasswordController,
                       //     hintText: "lbl_new_password".tr,
                       //     textInputType: TextInputType.visiblePassword,
                       //     suffix: InkWell(
                       //         onTap: () {
                       //           controller.isShowPassword.value =
                       //           !controller.isShowPassword.value;
                       //         },
                       //         child: Container(
                       //             margin: EdgeInsets.fromLTRB(
                       //                 30.h, 15.v, 16.h, 15.v),
                       //             child: CustomImageView(
                       //                 imagePath: controller
                       //                     .isShowPassword.value
                       //                     ? ImageConstant.eyesfill
                       //                     : ImageConstant.eyesOpen))),
                       //     suffixConstraints:
                       //     BoxConstraints(maxHeight: 54.v),
                       //     validator: (value) {
                       //       if (value == null ||
                       //           (!isValidPassword(value,
                       //               isRequired: true))) {
                       //         return "Please enter valid password";
                       //       }
                       //       return null;
                       //     },
                       //     obscureText: controller.isShowPassword.value,
                       //     contentPadding: EdgeInsets.only(
                       //         left: 16.h, top: 15.v, bottom: 15.v),
                       //     // borderDecoration:
                       //     // TextFormFieldStyleHelper.custom,
                       //     filled: false)),
                      Obx(() => CustomTextFormField(
                       autofocus: false,
                          controller:
                          controller.confirmpasswordController,
                          hintText: "msg_confirm_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,

                          suffix: GestureDetector(
                            onTap: () {
                              controller.isShowPassword1.value =
                              !controller.isShowPassword1.value;
                            },
                              child:  Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 16.h, 15.v),
                                  child: CustomImageView(
                                      imagePath: controller
                                          .isShowPassword1.value
                                          ? ImageConstant.eyesfill
                                          : ImageConstant.eyesOpen))),
                          suffixConstraints:
                          BoxConstraints(maxHeight: 54.v),
                        validator: (value) {


                          if(value!.isEmpty)
                            return 'Please enter confirm password';
                          if(value != controller.newpasswordController.text)
                            return 'Not Match password';
                          return null;
                        },
                          obscureText: controller.isShowPassword1.value,
                          // contentPadding: EdgeInsets.only(
                          //     left: 16.h, top: 15.v, bottom: 15.v),
                          // borderDecoration:
                          // TextFormFieldStyleHelper.custom,
                          filled: false,)),
                      SizedBox(height: 54.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr,
                          onTap: () {
                            if(_formKey.currentState!.validate()){

                           onTapContinue();
                            }
                          }),
                      SizedBox(height: 5.v)
                     ]))
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Displays a dialog with the [PopUpDialog] content.
  ///
  /// The [PopUpDialog] widget is created with a new
  /// instance of the [PopUpController],
  /// which is obtained using the Get.put() method.
  onTapContinue() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: PopUpDialog(
        Get.put(
          PopUpController(),
        ),
      ),
    ));
  }
}
