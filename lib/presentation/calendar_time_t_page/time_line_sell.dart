import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';


class TimeTableSell extends StatelessWidget {
  final String? text;
  final String? subName;
  const TimeTableSell({Key? key,  this.text,  this.subName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44.h,
        padding: EdgeInsets.symmetric(
            horizontal: 16.h, vertical: 13.v),
        decoration: AppDecoration
            .outlineGray
            .copyWith(
            borderRadius:
            BorderRadiusStyle
                .roundedBorder8),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(subName??"lbl_mathematics".tr,
                  style: theme
                      .textTheme.titleSmall!.copyWith(
                    color: Colors.black,
                    fontSize: 14.fSize,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: 8.h),
                  child: Text(
                      text??"lbl_class_7th_b".tr,
                      style: theme.textTheme
                          .bodySmall))
            ]));
  }
}
