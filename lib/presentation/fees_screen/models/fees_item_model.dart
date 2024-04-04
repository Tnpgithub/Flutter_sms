import 'package:flutter/widgets.dart';

import '../../../core/app_export.dart';

/// This class is used in the [fees_item_widget] screen.

class FeesItemModel {
  FeesItemModel({
    required this.money,
    required this.feesMonth,
    required this.date,
    required this.paid,
    required this.color,
  });

  final String date;
  final String money;
  final String feesMonth;
  final String paid;
  final Color color;
}

List<FeesItemModel> feesData = [
  FeesItemModel(
    color: Color(0xFFD93636),
      money: "\$3600",
      feesMonth: "School Fee For September",
      date: "07 Sep, 2023",
      paid: "Unpaid"),
  FeesItemModel(
    color: appTheme.greenA700,
      money: "\$3000",
      feesMonth: "School Fee For May",
      date: "06 May, 2023",
      paid: "Paid"),
  FeesItemModel(
      color: appTheme.greenA700,
      money: "\$3050",
      feesMonth: "School Fee For July",
      date: "07 July, 2023",
      paid: "Paid"),
  FeesItemModel(
      color: appTheme.greenA700,
      money: "\$3600",
      feesMonth: "School Fee For September",
      date: "07 Sep, 2023",
      paid: "Paid"),
  FeesItemModel(
      color: appTheme.greenA700,
      money: "\$4500",
      feesMonth: "School Fee For January",
      date: "07 Jan, 2023",
      paid: "Paid"),
];
