import 'controller/select_role_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class SelectRoleScreen extends GetWidget<SelectRoleController> {
  const SelectRoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Column(children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 23.v),
              decoration: AppDecoration.white,
              child: CustomAppBar(
                  leadingWidth: 44.h,
                  leading: AppbarImage2(
                      svgPath: ImageConstant.imgArrowleft,
                      margin: EdgeInsets.only(
                          left: 20.h, top: 5.v, bottom: 4.v),
                      onTap: () {
                        onTapArrowleftone();
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_select_role".tr))),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 34.v),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: GestureDetector(
                            onTap: () {
                              PrefUtils.setLogin(false);
                              onTapColumntrashone();
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    right: 10.h, bottom: 512.v),
                                child: Column(children: [
                                  Container(
                                    width: 184,
                                    height: 175,
                                    decoration: BoxDecoration(
                                      color: Color(0xfff8f8f8),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    // padding: EdgeInsets.symmetric(horizontal: 46.h),
                                    child: Center(
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgTrash,
                                          height: 85.v,
                                          width: 74.h),
                                    ),
                                  ),
                                  SizedBox(height: 18.v),
                                  Text("lbl_student".tr,
                                      style: theme.textTheme.titleLarge)
                                ])),
                          )),
                      Expanded(
                          child: GestureDetector(
                              onTap: () {

                              },
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.h, bottom: 511.v),
                                  child: Column(children: [
                                    Container(
                                      width: 184,
                                      height: 175,
                                      // padding: EdgeInsets.symmetric(horizontal: 46.h),
                                      decoration: BoxDecoration(
                                        color: Color(0xfff8f8f8),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgVector,
                                            height: 88.v,
                                            width: 61.h),
                                      ),
                                    ),
                                    SizedBox(height: 19.v),
                                    Text("lbl_teacher".tr,
                                        style: theme.textTheme.titleLarge)
                                  ]))))
                    ]),
              ))
          // Container(
          //     width: double.maxFinite,
          //     padding: EdgeInsets.symmetric(vertical: 34.v),
          //     child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Expanded(
          //               child: GestureDetector(
          //                   onTap: () {
          //                     PrefUtils.setLogin(false);
          //                     onTapColumntrashone();
          //                   },
          //                   child: Padding(
          //                       padding: EdgeInsets.only(
          //                           right: 10.h, bottom: 512.v),
          //                       child: Column(children: [
          //                         CustomImageView(
          //                             svgPath: ImageConstant.imgTrash,
          //                             height: 85.v,
          //                             width: 74.h),
          //                         SizedBox(height: 18.v),
          //                         Text("lbl_student".tr,
          //                             style: theme.textTheme.titleLarge)
          //                       ])))),
          //           Expanded(
          //               child: Padding(
          //                   padding: EdgeInsets.only(
          //                       left: 10.h, bottom: 511.v),
          //                   child: Column(children: [
          //                     CustomImageView(
          //                         svgPath: ImageConstant.imgVector,
          //                         height: 88.v,
          //                         width: 61.h),
          //                     SizedBox(height: 19.v),
          //                     Text("lbl_teacher".tr,
          //                         style: theme.textTheme.titleLarge)
          //                   ])))
          //         ]))
        ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapColumntrashone() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
