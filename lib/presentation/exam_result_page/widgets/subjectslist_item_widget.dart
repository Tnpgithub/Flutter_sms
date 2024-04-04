import '../controller/exam_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class SubjectslistItemWidget extends StatelessWidget {
  final String ?text;
  final Color? color;
  final String? secondText;
  final Color? secondColor;
  SubjectslistItemWidget(
     {
    Key? key, this.text, this.color, this.secondText, this.secondColor,
  }) : super(
          key: key,
        );

  // SubjectslistItemWidgetjectslistItemModel subjectslistItemModelObj;

  var controller = Get.find<ExamResultController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color:color?? theme.colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        text??"",
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            // Row(
            //   children: [
            //     Container(
            //       height: 10.adaptSize,
            //       width: 10.adaptSize,
            //       margin: EdgeInsets.only(
            //         top: 1.v,
            //         bottom: 3.v,
            //       ),
            //       decoration: BoxDecoration(
            //         color:color?? appTheme.amber300,
            //         borderRadius: BorderRadius.circular(
            //           5.h,
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(left: 10.h),
            //       child:Text(
            //         text??"",
            //         overflow: TextOverflow.ellipsis,
            //         style: CustomTextStyles.labelLargeBlack900,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
