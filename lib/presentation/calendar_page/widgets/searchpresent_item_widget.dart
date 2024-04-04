import '../controller/calendar_controller.dart';
import '../models/searchpresent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SearchpresentItemWidget extends StatelessWidget {
  SearchpresentItemWidget(
    this.searchpresentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchpresentItemModel searchpresentItemModelObj;

  var controller = Get.find<CalendarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 118.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
              svgPath: ImageConstant.imgSearchLightBlue900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    searchpresentItemModelObj.presentText!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    searchpresentItemModelObj.twentyTwoText!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
