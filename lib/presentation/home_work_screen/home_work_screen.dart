import '../home_work_screen/widgets/homework_item_widget.dart';
import 'controller/home_work_controller.dart';
import 'models/homework_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class HomeWorkScreen extends GetWidget<HomeWorkController> {
  const HomeWorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
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
            title: AppbarTitle(text: "lbl_home_work".tr),
            styleType: Style.bgFill),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 26.v),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("lbl_current_week".tr,
                    style: CustomTextStyles.bodyLargeGray700),
                SizedBox(height: 17.v),
                Expanded(
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.v);
                        },
                        itemCount: homeWorkData.length,
                        itemBuilder: (context, index) {
                          return HomeworkItemWidget(
                              subject: homeWorkData[index].subject,
                              date: homeWorkData[index].date,
                              chapter: homeWorkData[index].chapter,
                              marked: homeWorkData[index].marked,
                              textColor: homeWorkData[index].textColor);
                        }))
              ]),
        ));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
