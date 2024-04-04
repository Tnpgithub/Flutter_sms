import 'controller/holiday_and_vacation_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class HolidayAndVacationScreen extends GetWidget<HolidayAndVacationController> {
  const HolidayAndVacationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  Scaffold(
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
                        title: AppbarTitle(
                            text: "msg_holiday_and_vacation".tr))
                  ])),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20.h, vertical: 28.v),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_school_is_going".tr,
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 19.v),
                  SizedBox(
                      width: 386.h,
                      child: Text("msg_dear_children_summer".tr,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50))),
                  Container(
                      width: 364.h,
                      margin: EdgeInsets.only(top: 9.v, right: 23.h),
                      child: Text("msg_note_to_keep_your".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleMediumMedium
                              .copyWith(height: 1.50))),
                  SizedBox(height: 49.v),
                  SizedBox(
                      width: 138.h,
                      child: Text("msg_principal_dr_muhammad".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 5.v)
                ]),
          )
        ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
