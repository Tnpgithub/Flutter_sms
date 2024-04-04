import '../controller/message_individual_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  final String text;
  final String image;
  final String secondText;
  UserprofileItemWidget(
   {
    Key? key, required this.text, required this.image, required this.secondText,
  }) : super(
          key: key,
        );

  // UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<MessageIndividualController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: image,
          // imagePath: ImageConstant.imgEllipse29,
          height: 64.adaptSize,
          width: 64.adaptSize,
          radius: BorderRadius.circular(
            32.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumNunitoSans,
              ),
              SizedBox(height: 6.v),
              Text(
                secondText,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumNunitoSans,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgCall,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 20.v),
        ),
      ],
    );
  }
}
