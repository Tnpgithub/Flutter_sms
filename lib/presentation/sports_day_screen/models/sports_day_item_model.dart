import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';

/// This class is used in the [sports_day_item_widget] screen.

class SportsDayItemModel {
  SportsDayItemModel({this.id,required this.image,this.playe}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
  String image;
   Widget? playe;
}
List<SportsDayItemModel>sportDayData=[
  SportsDayItemModel(image: ImageConstant.sportDayOne),
  SportsDayItemModel(image: ImageConstant.sportDayTwo),
  SportsDayItemModel(image: ImageConstant.sportDayThree,
      playe: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      CustomIconButton(
        height: 32.adaptSize,
        width: 32.adaptSize,
        margin: EdgeInsets.only(
          right: 12.h,
          bottom: 12.v,
        ),
        padding: EdgeInsets.all(10.h),
        alignment: Alignment.bottomRight,
        child: CustomImageView(
          imagePath: ImageConstant.playe,
        ),
      ),
      // SizedBox(width: 6.h,),
      CustomIconButton(
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
    ],
  )),
  SportsDayItemModel(image: ImageConstant.sportDayFour),
  SportsDayItemModel(image: ImageConstant.sportDayFive),
  SportsDayItemModel(image: ImageConstant.sportDaySix,
      playe: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              right: 12.h,
              bottom: 12.v,
            ),
            padding: EdgeInsets.all(10.h),
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              imagePath: ImageConstant.playe,
            ),
          ),
          // SizedBox(width: 6.h,),
          CustomIconButton(
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
        ],
      )),

  SportsDayItemModel(image: ImageConstant.sportDaySevan),
  SportsDayItemModel(image: ImageConstant.sportDayEight),
];