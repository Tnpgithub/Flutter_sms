import '../../widgets/custom_text_form_field.dart';
import 'controller/message_groups_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:student_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class MessageGroupsScreen extends GetWidget<MessageGroupsController> {
  const MessageGroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: AppDecoration.white,
                  child: CustomAppBar(
                      height: 48.v,
                      leadingWidth: 44.h,
                      leading: AppbarImage2(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: EdgeInsets.only(
                              left: 20.h, top: 12.v, bottom: 12.v),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      title: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Row(children: [
                            AppbarImage(
                                imagePath: ImageConstant.imgComputer48x48),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 14.h, bottom: 1.v),
                                child: Column(children: [
                                  AppbarSubtitle1(
                                      text: "lbl_kristin_watson".tr),
                                  AppbarSubtitle3(
                                      text: "lbl_7th_b".tr,
                                      margin: EdgeInsets.only(
                                          top: 3.v, right: 76.h))
                                ]))
                          ])),
                      actions: [



                        CustomImageView(
                          svgPath: ImageConstant.imgCall,
                          // imagePath: imagePath,
                          margin: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 12.v),
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          fit: BoxFit.contain,
                        ),
                        // AppbarImage1(
                        //
                        //
                        //     margin: EdgeInsets.symmetric(
                        //         horizontal: 20.h, vertical: 12.v))
                      ])),
          Expanded(child: ListView(
            padding: EdgeInsets.zero,
            children: [
                 Container(
          padding:
          EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                        height: 24.v,
                        width: 388.h,
                        child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: 388.h,
                                      child: Divider(
                                          color: theme.colorScheme
                                              .onPrimaryContainer))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      margin: EdgeInsets.only(left: 149.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.h, vertical: 1.v),
                                      decoration: AppDecoration.white,
                                      child: Text("lbl_today".tr,
                                          style:
                                          theme.textTheme.bodyLarge)))
                            ])),
                    SizedBox(height: 32.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 12.v),
                        decoration: AppDecoration.fillGray5001.copyWith(
                            borderRadius:
                            BorderRadiusStyle.customBorderTL14),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 2.v, bottom: 1.v),
                                  child: Text("msg_hi_i_have_a_question".tr,
                                      style: theme.textTheme.bodyLarge)),
                              Padding(
                                  padding:
                                  EdgeInsets.only(left: 23.h, top: 9.v),
                                  child: Text("lbl_09_15_pm".tr,
                                      style: theme.textTheme.bodySmall))
                            ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: 339.h,
                            margin: EdgeInsets.only(top: 24.v, right: 49.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 12.v),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius:
                                BorderRadiusStyle.customBorderTL14),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 7.v),
                                  Text("msg_hello_sure_what".tr,
                                      style: theme.textTheme.bodyLarge),
                                  SizedBox(height: 2.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("lbl_10_00_pm".tr,
                                          style: theme.textTheme.bodySmall))
                                ]))),
                    Container(
                        margin: EdgeInsets.only(left: 91.h, top: 24.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 12.v),
                        decoration: AppDecoration.fillGray5001.copyWith(
                            borderRadius:
                            BorderRadiusStyle.customBorderTL14),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 8.v),
                              SizedBox(
                                  width: 265.h,
                                  child: Text(
                                      "msg_we_have_a_step_by_step".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.50))),
                              SizedBox(height: 3.v),
                              Text("lbl_10_08_pm".tr,
                                  style: theme.textTheme.bodySmall)
                            ])),
                    Container(
                        width: 297.h,
                        margin: EdgeInsets.only(
                            left: 91.h, top: 24.v, bottom: 5.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 12.v),
                        decoration: AppDecoration.fillGray5001.copyWith(
                            borderRadius:
                            BorderRadiusStyle.customBorderTL14),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 10.v),
                              Text("msg_write_a_new_knowledge".tr,
                                  style: theme.textTheme.bodyLarge),
                              SizedBox(height: 2.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("lbl_10_10_pm".tr,
                                      style: theme.textTheme.bodySmall))
                            ]))
                  ]))
            ],
          ))
            ])),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:   CustomTextFormField(
            filled: true,
            fillColor: appTheme.gray5001,
            autofocus: false,
            // borderColor: Colors.transparent,
            borderDecoration: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.h),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )
            ),
            // controller: controller.emailController,
            hintText: "lbl_type_a_here".tr,
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            suffix: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgIcattachment,
                  height: 20.h,
                  width: 20.h,),
                SizedBox(width: 16.v,),
                Container(
                  width: 36.h,
                  height: 36.h,
                  padding: EdgeInsets.all(8.h),
                  decoration: ShapeDecoration(
                    color: ColorSchemes.primaryColorScheme.primary,
                    shape: OvalBorder(),
                  ),
                  child:  CustomImageView(
                      svgPath: ImageConstant.imgSend, height: 20.v, width: 19.h),
                )

                // CustomImageView(svgPath: ImageConstant.imgSend, height: 20.v, width: 19.h),
              ],
            ).paddingOnly(right: 8.h),
            textStyle: TextStyle(
              fontSize: 16.fSize,
              // fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ),
            // validator: (value) {
            //   if (value == null ||
            //       (!isValidEmail(value, isRequired: true))) {
            //     return "Please enter valid email";
            //   }
            //   return null;
            // },
            contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h, vertical: 20.v)
        ).marginOnly(bottom:35.h).paddingSymmetric(horizontal: 20.h)
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
