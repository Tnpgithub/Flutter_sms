import 'package:student_app/Services/exam_api.dart';
import 'package:student_app/presentation/exam_exam_schedule_screen/models/exam_model.dart';

import '../exam_exam_schedule_screen/widgets/examdetails_item_widget.dart';
import 'controller/exam_exam_schedule_controller.dart';
import 'models/examdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

class ExamExamScheduleScreen extends StatefulWidget {
  const ExamExamScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ExamExamScheduleScreen> createState() => _ExamExamScheduleScreenState();
}

class _ExamExamScheduleScreenState extends State<ExamExamScheduleScreen> {
  List<ExamModel> exam = [];

  @override
  void initState() {
    super.initState();
    fetchExam();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return ListView.separated(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, top: 30.h),
        physics: BouncingScrollPhysics(),
        // shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 20.v);
        },
        itemCount: exam.length,
        itemBuilder: (context, index) {
          return ExamdetailsItemWidget(
              name: exam[index].name,
              //  total_marks: exam[index].total_marks,
              // pass_marks: exam[index].pass_marks,
              time: exam[index].time,
              date_formatted: exam[index].date_formatted);
        });
    // return Scaffold(
    //     appBar: CustomAppBar(
    //         height: 81.v,
    //         leadingWidth: 44.h,
    //         leading: AppbarImage2(
    //             svgPath: ImageConstant.imgArrowleft,
    //             margin: EdgeInsets.only(left: 20.h, top: 0.v, bottom: 0.v),
    //             onTap: () {
    //               onTapArrowleftone();
    //             }),
    //         centerTitle: true,
    //         title: AppbarTitle(text: "lbl_exam".tr),
    //         styleType: Style.bgFill),
    //     body: Container(
    //         width: double.maxFinite,
    //         padding: EdgeInsets.symmetric(horizontal: 20.h),
    //         child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
    //           SizedBox(height: 83.v),
    //           Expanded(
    //               child:  ),
    //           // Container(
    //           //     width: 388.h,
    //           //     padding:
    //           //         EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v),
    //           //     decoration: AppDecoration.fillGray
    //           //         .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
    //           //     child: Column(
    //           //         mainAxisSize: MainAxisSize.min,
    //           //         crossAxisAlignment: CrossAxisAlignment.start,
    //           //         children: [
    //           //           SizedBox(height: 64.v),
    //           //           Text("msg_science_chapter".tr,
    //           //               style: theme.textTheme.titleMedium)
    //           //         ]))
    //         ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  Future<void> fetchExam() async {
    final response = await ExamApi.fetchExam('Announcement');

    setState(() {
      exam = response;
    });
  }
}
