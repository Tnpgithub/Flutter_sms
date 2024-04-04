import 'package:pinput/pinput.dart';
import 'package:student_app/core/app_export.dart';

import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // OtpController controller =Get.put(OtpController());

    final defaultPinTheme = PinTheme(
      width: 51.h,
      height: 50.h,
      textStyle:  TextStyle(
        fontSize: 16.fSize,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: appTheme.grey,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
    );
    final focusedPinTheme = PinTheme(
      width: 51.h,
      height: 50.h,
      textStyle:  TextStyle(
        fontSize: 16.fSize,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
    );
    final errorTheme = PinTheme(
      width: 51.h,
      height: 50.h,
      textStyle:  TextStyle(
        fontSize: 16.fSize,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
    );
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            height: 81.v,
            leadingWidth: 44.h,
            leading: AppbarImage2(
                svgPath: ImageConstant.imgArrowleft,
                margin: EdgeInsets.only(left: 20.h, top: 29.v, bottom: 28.v),
                onTap: () {
                  onTapArrowleftone();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "Verification".tr),
            styleType: Style.bgFill),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
            child: Column(children: [
              Pinput(
                length: 6,
                textInputAction: TextInputAction.done,
                errorText: "Pin is Incorrect",
                focusedPinTheme: focusedPinTheme,
                controller: controller.otpController,

                // senderPhoneNumber: "1262189112",
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                errorTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFF94144),
                ),
                errorPinTheme: errorTheme,
                defaultPinTheme: defaultPinTheme,
                validator: (s) {
                  return null;
                  // return s == '121313' ? null : '';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),
              // Obx(() => CustomPinCodeTextField(
              //     context: context,
              //     margin: EdgeInsets.only(right: 2.h),
              //     controller: controller.otpController.value,
              //     onChanged: (value) {})),
              SizedBox(height: 54.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_didn_t_get_code2".tr,
                        style: theme.textTheme.bodyLarge),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_resend_code".tr,
                        style: CustomTextStyles.titleMediumNunitoSansPrimary)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 54.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                onTap: () {
                  onRestScreen();
                },
              ),
              SizedBox(height: 5.v)
            ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  onRestScreen() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
