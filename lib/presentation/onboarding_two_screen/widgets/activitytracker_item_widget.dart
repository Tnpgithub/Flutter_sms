import '../controller/onboarding_two_controller.dart';
import '../models/activitytracker_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class ActivitytrackerItemWidget extends StatelessWidget {
  ActivitytrackerItemWidget(
    this.activitytrackerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ActivitytrackerItemModel activitytrackerItemModelObj;

  var controller = Get.find<OnboardingTwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 34.h,
            right: 35.h,
          ),
          child: Text(
            "msg_track_all_activity".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium!.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 17.v),
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
