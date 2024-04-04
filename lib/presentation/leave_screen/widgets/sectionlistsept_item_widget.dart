import '../controller/leave_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class SectionlistseptItemWidget extends StatelessWidget {
  final String? date_formatted;
  final String? name;
  final String? description;
  final String? responseText;
  final Color? color;
  SectionlistseptItemWidget({
    Key? key,
    this.date_formatted,
    this.name,
    this.description,
    this.responseText,
    this.color,
  }) : super(
          key: key,
        );

  // SectionlistseptItemModel sectionlistseptItemModelObj;

  var controller = Get.find<LeaveController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillGray.copyWith(
        // color: Colors.red,
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    date_formatted ?? "lbl_wed_10_sep".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 28,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        BorderSide(width: 1, color: color ?? Color(0xFFD83636)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    responseText ?? 'Cancelled',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color ?? Color(0xFFD83636),
                      fontSize: 12.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      // height: 0.12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMenuGray700,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  name ?? "lbl_casual".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgMenuGray700,
                // svgPath: ImageConstant.,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(left: 19.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  description ?? "lbl_half_day_leave".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          // SizedBox(height: 2.v),
        ],
      ),
    ).marginOnly(bottom: 16.h);
  }
}
