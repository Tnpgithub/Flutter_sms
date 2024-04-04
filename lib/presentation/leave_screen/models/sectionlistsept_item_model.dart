import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

/// This class is used in the [sectionlistsept_item_widget] screen.

class SectionlistseptItemModel {
  SectionlistseptItemModel({

    this.id,
    this.date,
    this.leaveText,
    this.responseText,
    this.color,
  }) {
    // groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");

  }



  Rx<String>? id;
  String? date;
  String? leaveText;
  Color?color;
  String? responseText;
}
List<SectionlistseptItemModel> sectionlistseptItemList = [
  SectionlistseptItemModel(

      date: "Wed, 10 Sep".tr,
      leaveText: "Half Day Leave".tr,
      responseText: "Waiting".tr,color: Color(0xFFE1A200)),
  SectionlistseptItemModel(

      date: "Sat, 05 Sep".tr,
      leaveText: "Full  Day Leave".tr,
      responseText: "Cancelled".tr),
  SectionlistseptItemModel(

      date: "Wed, 10 Sep".tr,
      leaveText: "Full  Day Leave".tr,
      responseText: "Approved".tr,
      color:Color(0xFF04B155)
  ),
];
List<SectionlistseptItemModel> secondSectionlistseptItemList = [

  SectionlistseptItemModel(

      date: "Mon, 28 Aug".tr,
      leaveText: "Half Day Leave".tr,
      responseText: "Approved".tr,
      color:Color(0xFF04B155)
  ),
  SectionlistseptItemModel(

      date: "Tue, 15 Aug".tr,
      leaveText: "Full Day Leave".tr,
      responseText: "Approved".tr,
      color:Color(0xFF04B155)
  ),
  SectionlistseptItemModel(

      date: "Fri, 1 Aug To 4 ".tr,
      leaveText: "4 Day Leave".tr,
      responseText: "Approved".tr,
      color:Color(0xFF04B155)
  )
];