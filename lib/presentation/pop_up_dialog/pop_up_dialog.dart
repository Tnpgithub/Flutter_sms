
import 'controller/pop_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class PopUpDialog extends StatelessWidget {
  PopUpDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PopUpController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 388.h,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 44.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            svgPath: ImageConstant.imgLock,
            height: 92.v,
            width: 72.h,
          ),
          SizedBox(height: 38.v),
          Text(
            "msg_password_changed".tr,
            style: CustomTextStyles.titleLarge22,
          ),
          SizedBox(height: 11.v),
          SizedBox(
            width: 226.h,
            child: Text(
              "msg_your_password_has".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.50,
                color: Colors.black,
                fontSize: 16.fSize,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          CustomElevatedButton(onTap: () {
            Get.offAllNamed(AppRoutes.loginScreen);
            print("sacasas");
          },
            text: "lbl_continue".tr,
          ),
        ],
      ),
    );
  }
}
