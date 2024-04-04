import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

class UpcomingEventCommon extends StatelessWidget {
  final String name;
  final String date_formatted;
  final String photo_url;
  const UpcomingEventCommon(
      {Key? key,
      required this.name,
      required this.date_formatted,
      required this.photo_url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 184.h,
        // height: 205.v,
        // margin: EdgeInsets.only(left: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        //  decoration: BoxDecoration(
        // color: Colors.green
        //  ),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment:
            // MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Container(
                child: Image.network(photo_url),
                height: 127.v,
                width: 168.h,
              ),
              // SizedBox(height: 8.v),
              Expanded(
                  child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name.tr, style: theme.textTheme.titleMedium),
                    SizedBox(height: 9.v),
                    Row(children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCalendar,
                          height: 18.adaptSize,
                          width: 18.adaptSize),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(date_formatted.tr,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 0.h)))
                    ]),
                  ],
                ),
              ))
              // SizedBox(height: 8.v)
            ]));
  }
}
