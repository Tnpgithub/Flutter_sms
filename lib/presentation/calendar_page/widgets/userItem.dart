import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

import '../../../widgets/custom_icon_button.dart';


// ignore: must_be_immutable
class UserProfilerowItemWidget extends StatelessWidget {
  final String? text;
  final String? second;
  final Color ?color;
  final String? image;
  const UserProfilerowItemWidget({Key? key, this.text, this.second, this.color, this.image}) : super(key: key);
  // UserprofilerowItemModel userprofilerowItemModelObj;


  @override
  Widget build(BuildContext context) {
    // var controller = Get.find<AttendanceTeacherController>();
    return Container(
      // padding: EdgeInsets.symmetric(
      //   horizontal: 13.h,
      //   vertical: 17.v,
      // ),
      decoration: AppDecoration.fillBlue.copyWith(
        color: color,
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 118.h,
      height: 83.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 5.v,
            ),
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillWhiteA,
            child: CustomImageView(
              imagePath: image?? ImageConstant.imgSearchLightBlue900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text!,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  second!,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
