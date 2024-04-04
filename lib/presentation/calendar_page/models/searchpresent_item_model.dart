import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

/// This class is used in the [searchpresent_item_widget] screen.

class SearchpresentItemModel {
  SearchpresentItemModel({
    this.presentText,
    this.twentyTwoText,
    this.id,
  }) {
    presentText = presentText ?? Rx("Present");
    twentyTwoText = twentyTwoText ?? Rx("22");
    id = id ?? Rx("");
  }

  Rx<String>? presentText;

  Rx<String>? twentyTwoText;

  Rx<String>? id;
}


/// This class is used in the [userprofilerow_item_widget] screen.

class UserprofilerowItemModel {
  UserprofilerowItemModel({
    this.color,
    this.second,
    this.image,
    this.text,
  });

  String? text;
  String? second;
  Color ?color;
  String? image;
}
List<UserprofilerowItemModel>presentList=[
  UserprofilerowItemModel(
    text: "Present".tr,
    second: "22".tr,
    color: Color(0xFFE7F5FF),
    image: ImageConstant.user,
  ),
  UserprofilerowItemModel(
    text: "Absent".tr,
    second: "03".tr,
    color: Color(0xFFFFE9E9),
    image: ImageConstant.userRemove,
  ),
  UserprofilerowItemModel(
    text: "Event".tr,
    second: "05".tr,
    color: Color(0xFFEDEDFF),
    image: ImageConstant.clock,
  )
];