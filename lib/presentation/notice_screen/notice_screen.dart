import 'package:student_app/Services/notice_api.dart';
import 'package:student_app/presentation/holiday_and_vacation_screen/holiday_and_vacation_screen.dart';
import 'package:student_app/presentation/notice_screen/models/notice_model.dart';

import '../notice_screen/widgets/listdatetext_item_widget.dart';
import 'controller/notice_controller.dart';
import 'models/listdatetext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  List<Notice> notices = [];

  @override
  void initState() {
    super.initState();
    fetchNotices();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
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
                      title: AppbarTitle(text: "lbl_notice".tr))),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
                      child: ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.v);
                          },
                          itemCount: notices.length,
                          //itemCount: noticeData.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Map<String, dynamic> arguments = {
                                  "index": index,
                                  "title": notices[index].title,
                                  "date_formatted":
                                      notices[index].date_formatted,
                                  "date": notices[index].date,
                                  "description": notices[index].description,
                                };

                                print("current Index ${index}");
                                Get.to(
                                  HolidayAndVacationScreen(),
                                  arguments: arguments,
                                );
                              },
                              child: ListdatetextItemWidget(
                                //date: noticeData[index].date,
                                date_formatted: notices[index].date_formatted,
                                date: notices[index].date,
                                title: notices[index].title,
                                description: notices[index].description,
                              ),
                              //text: noticeData[index].text,),
                            );
                          })))
            ])));
  }

  /// Navigates to the holidayAndVacationScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the holidayAndVacationScreen.
  onTapColumndatetext(int currentIndex) {
    Get.toNamed(AppRoutes.holidayAndVacationScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  Future<void> fetchNotices() async {
    final response = await NoticeApi.fetchNotices('Announcement', 5, 0);

    setState(() {
      notices = response;
    });
  }
}
