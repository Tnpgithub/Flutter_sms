import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  Scaffold(
        body: Column(children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 22.v),
              decoration: AppDecoration.white,
              child: CustomAppBar(
                  leadingWidth: 44.h,
                  leading: AppbarImage2(
                      svgPath: ImageConstant.imgArrowleft,
                      margin: EdgeInsets.only(
                          left: 20.h, top: 6.v, bottom: 3.v),
                      onTap: () {
                        onTapArrowleftone();
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_notifications".tr))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.h, top: 16.v, right: 20.h),
                  child:  ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount:notificationsList.length,
                      itemBuilder: (context, index) {

                        return NotificationsItemWidget(
                          text: notificationsList[index].text,
                          min: notificationsList[index].min,
                        );
                      })))
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
