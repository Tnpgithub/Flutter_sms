import '../controller/home_work_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class HomeworkItemWidget extends StatelessWidget {
  final String subject;
  final String date;
  final String chapter;
  final String marked;
  final Color textColor;

  HomeworkItemWidget({
    Key? key,
    required this.subject,
    required this.date,
    required this.chapter,
    required this.marked, required this.textColor,
  }) : super(
          key: key,
        );

  var controller = Get.find<HomeWorkController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMenuGray700,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 5.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 5.v,
                  bottom: 4.v,
                ),
                child: Text(
                  subject,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgCalendar,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 5.v,
                  bottom: 5.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 5.v,
                  bottom: 4.v,
                ),
                child: Text(
                  date,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Spacer(),
              Container(
                width: 107,
                height: 28,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1, color: textColor),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    marked,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 12.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      // height: 0.12,
                    ),
                  ),
                ),
              ),
              // CustomOutlinedButton(
              //   width: 107.h,
              //   text: "lbl_pending".tr,
              //   buttonStyle: CustomButtonStyles.outlineAmber,
              // ),
            ],
          ),
          SizedBox(height: 14.v),
          Text(
            chapter,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
