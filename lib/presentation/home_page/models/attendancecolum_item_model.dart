import 'dart:ui';

import 'package:student_app/presentation/calendar_time_t_tab_container_page/calendar_time_t_tab_container_page.dart';

import '../../../core/app_export.dart';
import '../../home_container_screen/controller/bottom_controller.dart';
import '../../message_individual_tab_container_page/message_individual_tab_container_page.dart';

/// This class is used in the [attendancecolum_item_widget] screen.

class AttendancecolumItemModel {
 AttendancecolumItemModel({
  this.attendanceText,
  this.color,
  this.id,
  this.image,
  this.onTab,
 });

 String? attendanceText;
 Color? color;
 String? image;
 void Function()?onTab;
 Rx<String>? id;
}

BottomBarController controller = Get.find();
List<AttendancecolumItemModel>attendanceData = [
 AttendancecolumItemModel(
  color: appTheme.homeSellOne,
  attendanceText: "lbl_attendance".tr,
  image: ImageConstant.attendance,
     onTab: () {
      controller.selectedIndex.value=1;
      // // Get.toNamed(controller.getCurrentRoute(type), id: 1);

      controller.onChange(CalendarTimeTTabContainerPage());

      // Get.toNamed(AppRoutes.messageIndividualTabContainerPage);

     }
 ),
 AttendancecolumItemModel(
  color: appTheme.homeSellTwo,
  attendanceText: "lbl_exam".tr,
  image: ImageConstant.exam,
  onTab: () {
  Get.toNamed(AppRoutes.examResultTabContainerScreen);
  },
 ),
 AttendancecolumItemModel(
  color: appTheme.homeSellThree,
  attendanceText: "Leave".tr,
  image: ImageConstant.leave,
  onTab: () {
   Get.toNamed(AppRoutes.leaveScreen);
  },
 ),
 AttendancecolumItemModel(
  color: appTheme.homeSellFour,
  attendanceText: "lbl_fees".tr,
  image: ImageConstant.fees,
  onTab: () {
   Get.toNamed(AppRoutes.feesScreen);
  },
 ),
 AttendancecolumItemModel(
  color: appTheme.homeSellFive,
  attendanceText: "lbl_home_work".tr,
  image: ImageConstant.home_work,
  onTab: () {
   Get.toNamed(AppRoutes.homeWorkScreen);
  },
 ),
 AttendancecolumItemModel(
     color: appTheme.homeSellSix,
     attendanceText: "Community".tr,
     image: ImageConstant.community,
     onTab: () {
      // controller.selectedIndex.value=1;
      // controller.onChange(StudentInfoEmptyPage());
      // (BottomBarEnum type) {
      //   print("sdegsde===g${type}");
      //    Get.toNamed(controller.getCurrentRoute(type), id: 2);
      //  };
      Get.toNamed(AppRoutes.communityScreen);

     }
 ),
 AttendancecolumItemModel(
     color: appTheme.homeSellSeven,
     attendanceText: "message".tr,
     image: ImageConstant.messageChat,
     onTab: () {
      controller.selectedIndex.value=2;
      // // Get.toNamed(controller.getCurrentRoute(type), id: 1);

      controller.onChange(MessageIndividualTabContainerPage());

      // Get.toNamed(AppRoutes.messageIndividualTabContainerPage);

     }
 ),
 AttendancecolumItemModel(
     color: appTheme.notice,
     attendanceText: "notice".tr,
     image: ImageConstant.notice
     ,
     onTab: () {
      Get.toNamed(AppRoutes.noticeScreen);
     }
 ),
];


