import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';

class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.blue50.withOpacity(0.2),
        body: Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.2),
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgPayment),
                    fit: BoxFit.cover)),
            child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 26.h, vertical: 44.v),
                    decoration: AppDecoration.white.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 10.v),
                          CustomImageView(
                              svgPath: ImageConstant.imgMail,
                              height: 78.v,
                              width: 92.h),
                          Container(
                              width: 272.h,
                              margin: EdgeInsets.only(
                                  left: 31.h, top: 43.v, right: 31.h),
                              child: Text("msg_your_school_fees".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleLarge22
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 29.v),
                          CustomElevatedButton(
                              text: "lbl_ok".tr,
                              onTap: () {
                                onTapOk();
                              })
                        ])))));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapOk() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
