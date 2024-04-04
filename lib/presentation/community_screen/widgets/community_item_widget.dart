import '../controller/community_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class CommunityItemWidget extends StatelessWidget {
  final String date;
  final String image;
  final String days;
  CommunityItemWidget({
    Key? key,
    required this.date,
    required this.image,
    required this.days,
  }) : super(
          key: key,
        );

  var controller = Get.find<CommunityController>();

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
          Container(
            child: Image.network(image),
            height: 130.v,
            width: 372.h,
          ),
          SizedBox(height: 11.v),
          Text(
            days,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 7.v),
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
