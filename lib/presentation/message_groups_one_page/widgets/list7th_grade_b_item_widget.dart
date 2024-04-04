import '../controller/message_groups_one_controller.dart';
import '../models/list7th_grade_b_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class List7thGradeBItemWidget extends StatelessWidget {
  List7thGradeBItemWidget(
    this.list7thGradeBItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List7thGradeBItemModel list7thGradeBItemModelObj;

  var controller = Get.find<MessageGroupsOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse295,
              height: 64.adaptSize,
              width: 64.adaptSize,
              radius: BorderRadius.circular(
                32.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      list7thGradeBItemModelObj.kristinwatson!.value,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumNunitoSans,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Obx(
                    () => Text(
                      list7thGradeBItemModelObj.kristinwastson!.value,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumNunitoSans,
                    ),
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
        ),
        SizedBox(height: 16.v),
        Divider(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ],
    );
  }
}
