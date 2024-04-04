import '../controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget{
  final String? text;
  final String? min;
  NotificationsItemWidget(
   {
    Key? key, required this.text, required this.min,
  }) : super(
          key: key,
        );

  // NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgTrashPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
            ),
            child: Text(
              text??"Leave Scheduled\nOff Campus Overnight Leave",
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 29.v,
              bottom: 3.v,
            ),
            child: Text(
              min??"10 min",
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
