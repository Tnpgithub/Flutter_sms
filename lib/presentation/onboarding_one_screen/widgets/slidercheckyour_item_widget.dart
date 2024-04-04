import '../controller/onboarding_one_controller.dart';
import '../models/slidercheckyour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class SlidercheckyourItemWidget extends StatelessWidget {
  SlidercheckyourItemWidget(
    this.slidercheckyourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SlidercheckyourItemModel slidercheckyourItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 41.h,
            right: 42.h,
          ),
          child: Text(
            "msg_check_your_kids".tr,
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
