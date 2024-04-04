import '../controller/notice_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class ListdatetextItemWidget extends StatelessWidget {
  final String date;
  final String date_formatted;
  final String title;
  final String description;
  ListdatetextItemWidget(
      {Key? key,
      required this.date,
      required this.date_formatted,
      required this.title,
      required this.description})
      : super(
          key: key,
        );

  // ListdatetextItemWidgetatetextItemWidgettdatetextItemModel listdatetextItemModelObj;

  var controller = Get.find<NoticeController>();

  // VoidCallback? onTapColumndatetext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgCalendar,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  date_formatted,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
