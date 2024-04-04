import 'dart:convert';

import 'package:flutter/services.dart';

import '../controller/upcoming_events_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class SportsdayItemWidget extends StatelessWidget {
  final String text;
  final String image;
  final String date;
  SportsdayItemWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.date,
  }) : super(
          key: key,
        );

  var controller = Get.find<UpcomingEventsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Image.network(image),
              height: 127.v,
              width: 168.h,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 9.v),
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
                  date,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
