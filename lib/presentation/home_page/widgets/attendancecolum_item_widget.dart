import 'package:flutter/material.dart';

import '../controller/home_controller.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class AttendancecolumItemWidget extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  AttendancecolumItemWidget({
    Key? key,
    this.onTapAttendancecolum, required this.image, required this.text, required this.color,
  }) : super(
          key: key,
        );

  // AttendancecolumItemModel attendancecolumItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapAttendancecolum;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAttendancecolum?.call();
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              // /**/height: 62.h,
              width: 62.h,
              padding: EdgeInsets.all( 19.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.h),
                color: color,
              ),
              child: CustomImageView(
                imagePath: image,
                height: 24.v,
                width: 24.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // CustomImageView(
          //   svgPath: ImageConstant.imgGroup38191,
          //   height: 69.v,
          //   width: 82.h,
          // ),
          SizedBox(height: 7.v),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
        ],
      ),
    );
  }
}
