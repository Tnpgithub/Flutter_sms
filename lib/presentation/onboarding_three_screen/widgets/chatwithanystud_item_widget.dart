import '../controller/onboarding_three_controller.dart';
import '../models/chatwithanystud_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class ChatwithanystudItemWidget extends StatelessWidget {
  ChatwithanystudItemWidget(
    this.chatwithanystudItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatwithanystudItemModel chatwithanystudItemModelObj;

  var controller = Get.find<OnboardingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.h),
          child: Text(
            "msg_chat_with_any_student".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium!.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 22.v),
        Text(
          "msg_excepteur_sint_occaecat".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.bodyMediumNunitoSansBlack900.copyWith(
            height: 1.71,
          ),
        ),
      ],
    );
  }
}
