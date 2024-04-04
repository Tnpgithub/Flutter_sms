import 'controller/payment_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';

class PaymentOneScreen extends GetWidget<PaymentOneController> {
  const PaymentOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
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
                        title: AppbarTitle(text: "lbl_payment".tr,))
                  ])),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20.h, vertical: 24.v),
            child: Column(children: [
              Container(
                  height: 74.h,
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius:
                      BorderRadiusStyle.roundedBorder12),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgGoogle,
                        height: 34.adaptSize,
                        width: 34.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, top: 8.v, bottom: 5.v),
                        child: Text("lbl_google_pay".tr,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 16.fSize,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            )))
                  ])),
              SizedBox(height: 16.v),
              Container(
                  height: 74.h,
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius:
                      BorderRadiusStyle.roundedBorder12),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgIcpaypal,
                        height: 34.adaptSize,
                        width: 34.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, top: 8.v, bottom: 5.v),
                        child: Text("lbl_google_pay".tr,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 16.fSize,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            )))
                  ])),
              SizedBox(height: 16.v),


              Container(
                height: 74.h,
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius:
                      BorderRadiusStyle.roundedBorder12),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgFile,
                        height: 34.adaptSize,
                        width: 34.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, top: 8.v, bottom: 5.v),
                        child: Text("lbl_visa_pay".tr,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 16.fSize,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            )))
                  ])),
              // CustomTextFormField(
              //     controller: controller.visapaynameoneController,
              //     hintText: "lbl_visa_pay".tr,
              //     textInputAction: TextInputAction.done,
              //     prefix: Container(
              //         margin:
              //         EdgeInsets.fromLTRB(20.h, 20.v, 16.h, 20.v),
              //         child: CustomImageView(
              //             svgPath: ImageConstant.imgFile)),
              //     prefixConstraints: BoxConstraints(maxHeight: 74.v),
              //     contentPadding: EdgeInsets.only(
              //         top: 27.v, right: 30.h, bottom: 27.v),
              //     borderDecoration: TextFormFieldStyleHelper.fillGray,
              //     fillColor: appTheme.gray5002),
              SizedBox(height: 5.v)
            ]),
          )
        ]),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_pay_now".tr,
            onTap: () {
              payNow(context);
            },
            margin:
            EdgeInsets.only(left: 20.h, right: 20.h, bottom: 40.v)));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
  payNow(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(14.h)),
        insetPadding: EdgeInsets.only(left: 16, right: 16),
        content: Container(
            width: 388.h,
            // height: 368.v,
            // decoration: BoxDecoration(
            //     color: appTheme.black900.withOpacity(0.2),
            //     image: DecorationImage(
            //         image: AssetImage(ImageConstant.imgPayment),
            //         fit: BoxFit.cover))BoxFit,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 44.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgMail,
                      height: 78.v,
                      width: 92.h),
                  SizedBox(height: 30.v),
                  Text("msg_your_school_fees".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLarge22
                          .copyWith(height: 1.50)),
                  SizedBox(height: 30.v),
                  CustomElevatedButton(
                      text: "lbl_ok".tr,
                      onTap: () {
                        onTapOk();
                      }),
                  SizedBox(height: 20.v),
                ])),
      );
    },);
    // Get.toNamed(AppRoutes.paymentScreen);
  }
  onTapOk() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
