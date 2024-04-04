import 'package:student_app/Services/leave_api.dart';
import 'package:student_app/presentation/leave_screen/models/leave_model.dart';

import '../leave_screen/widgets/sectionlistsept_item_widget.dart';
import 'models/sectionlistsept_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_1.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({Key? key}) : super(key: key);

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  List<LeaveModel> leave = [];

  @override
  void initState() {
    super.initState();
    fetchLeave();
  }

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
                  margin: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 4.v),
                  onTap: () {
                    onTapArrowleftone();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_leave2".tr),
              actions: [
                AppbarImage1(
                    svgPath: ImageConstant.imgPlus,
                    margin: EdgeInsets.fromLTRB(20.h, 5.v, 20.h, 4.v),
                    onTap: () {
                      Get.toNamed(AppRoutes.applyLeaveScreen);
                    }),
              ])),
      Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'September 2023',
                style: TextStyle(
                  color: appTheme.gray700,
                  fontSize: 16.fSize,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  // height: 0.09,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Column(
                children: List.generate(
                    leave.length,
                    (index) => SectionlistseptItemWidget(
                        color: sectionlistseptItemList[index].color,
                        date_formatted: leave[index].date_formatted,
                        name: leave[index].name,
                        description: leave[index].description,
                        responseText:
                            sectionlistseptItemList[index].responseText)),
              ),
              // SizedBox(height: 16.h,),
              Text(
                'August 2023',
                style: TextStyle(
                  color: appTheme.gray700,
                  fontSize: 16.fSize,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  // height: 0.09,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Column(
                children: List.generate(
                    leave.length,
                    (index) => SectionlistseptItemWidget(
                        color: sectionlistseptItemList[index].color,
                        date_formatted: leave[index].date_formatted,
                        name: leave[index].name,
                        description: leave[index].description,
                        responseText:
                            sectionlistseptItemList[index].responseText)),
              )
            ],
          ),
        ),
      ),
      // Expanded(
      //     child: Padding(
      //         padding: EdgeInsets.fromLTRB(20.h, 27.v, 20.h, 5.v),
      //         child: Obx(() =>
      //             GroupedListView<SectionlistseptItemModel, String>(
      //                 shrinkWrap: true,
      //                 stickyHeaderBackgroundColor:
      //                 Colors.transparent,
      //                 elements: controller.leaveModelObj.value
      //                     .sectionlistseptItemList.value,
      //                 groupBy: (element) => element.groupBy!.value,
      //                 sort: false,
      //                 groupSeparatorBuilder: (String value) {
      //                   return Padding(
      //                       padding: EdgeInsets.only(
      //                           top: 19.v, bottom: 16.v),
      //                       child: Text(value,
      //                           style: CustomTextStyles
      //                               .bodyLargeGray700
      //                               .copyWith(
      //                               color: appTheme.gray700)));
      //                 },
      //                 itemBuilder: (context, model) {
      //                   return SectionlistseptItemWidget(model);
      //                 },
      //                 separator: SizedBox(height: 16.v)))))
    ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  Future<void> fetchLeave() async {
    var response = await LeaveApi.fetchleave();

    setState(() {
      leave = response;
    });
  }
}
