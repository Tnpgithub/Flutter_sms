import '../controller/exam_exam_schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class ExamdetailsItemWidget extends StatelessWidget {
  final String name;
  // final String total_marks;
  // final String pass_marks;
  final String time;
  final String date_formatted;
  ExamdetailsItemWidget({
    Key? key,
    required this.time,
    // required this.pass_marks,
    // required this.total_marks,
    required this.name,
    required this.date_formatted,
  }) : super(
          key: key,
        );

  // ExamdetailsItemWidgetdetailsItemModel examdetailsItemModelObj;

  var controller =
      Get.put<ExamExamScheduleController>(ExamExamScheduleController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              right: 80.h,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMenu,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          // child: Text(
                          //   //  total_marks,
                          //   overflow: TextOverflow.ellipsis,
                          //   style: CustomTextStyles.bodyMediumBlack900,
                          // ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCalendarPurple600,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            date_formatted,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgMenuTeal600,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            // child: Text(
                            //   pass_marks,
                            //   overflow: TextOverflow.ellipsis,
                            //   style: CustomTextStyles.bodyMediumBlack900,
                            // ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSearchBlueGray800,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              time,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBlack900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
