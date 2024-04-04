
import '../../../core/app_export.dart';

/// This class is used in the [attendancecolum_item_widget] screen.

class UpcomingEventModel {
  UpcomingEventModel({
 required this.image,
    required this.date,
    required this.text,
  });

  final String image;
  final String text;
  final String date;
}

// BottomBarController controller = Get.find();
List<UpcomingEventModel>upcomingEventData = [
  UpcomingEventModel(image: ImageConstant.sport, date: "10 Sep, 2023", text: "Sports Day"),
  UpcomingEventModel(image: ImageConstant.annualDay, date: "28 Sep, 2023", text: "Annual Day"),
];


