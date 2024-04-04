import '../controller/sports_day_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SportsDayItemWidget extends StatelessWidget {
  final String image;
  final Widget? playe;
  SportsDayItemWidget(

    {
    Key? key, required this.image,  this.playe,
  }) : super(
          key: key,
        );

  // SportsDayItemModel sportsDayItemModelObj;

  var controller = Get.find<SportsDayController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184.adaptSize,
      width: 184.adaptSize,
      child: Stack(
        // alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: image,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
         Padding(
           padding:  EdgeInsets.only(right: 10.h),
           child: playe?? CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(
                right: 12.h,
                bottom: 12.v,
              ),
              padding: EdgeInsets.all(8.h),
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowdownWhiteA700,
              ),
            ),
         ),
        ],
      ),
    );
  }
}
