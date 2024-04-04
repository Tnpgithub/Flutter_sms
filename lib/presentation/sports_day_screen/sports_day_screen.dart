import '../sports_day_screen/widgets/sports_day_item_widget.dart';
import 'controller/sports_day_controller.dart';
import 'models/sports_day_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class SportsDayScreen extends GetWidget<SportsDayController> {
  const SportsDayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
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
                        title: AppbarTitle(text: "lbl_sports_day".tr))
                  ])),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.h, top: 24.v, right: 20.h),
                  child:GridView.builder(
                    padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 185.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.h,
                          crossAxisSpacing: 0.h),
                      physics: BouncingScrollPhysics(),
                      itemCount: sportDayData.length,
                      itemBuilder: (context, index) {

                        return SportsDayItemWidget(
                            image: sportDayData[index].image,
                            playe:sportDayData[index].playe);
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
