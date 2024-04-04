import '../../../core/app_export.dart';

/// This class is used in the [sportsday_item_widget] screen.

class SportsdayItemModel {
  SportsdayItemModel({
   required this.text,
    required this.image,
    required this.date,
  });
  final String text;
  final String image;
  final String date;
}
List<SportsdayItemModel>sportDayList=[
SportsdayItemModel(
text: "Sports Day".tr,
  image: ImageConstant.sport,
  date: "10 Sep, 2023".tr,
),
SportsdayItemModel(
text: "Annual Day".tr,
  image: ImageConstant.annualDay,
  date: "28 Sep, 2023".tr,
),
  SportsdayItemModel(
    text: "Ganesh Chaturthi ".tr,
    image: ImageConstant.ganesh,
    date: "30 Sep, 2023".tr,
  ),
  SportsdayItemModel(
    text: "Workshop For Parents".tr,
    image: ImageConstant.work_shop,
    date: "1 Oct, 2023".tr,
  ),
  SportsdayItemModel(
    text: "Yoga Day".tr,
    image: ImageConstant.yoga_day,
    date: "10 Oct, 2023".tr,
  ),
  SportsdayItemModel(
    text: "Grand Parents Day".tr,
    image: ImageConstant.grand_parent_day,
    date: "16 Oct, 2023".tr,
  ),
];