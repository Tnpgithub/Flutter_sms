import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/calendar_time_t_tab_container_page/models/calendar_time_t_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CalendarTimeTTabContainerPage.
///
/// This class manages the state of the CalendarTimeTTabContainerPage, including the
/// current calendarTimeTTabContainerModelObj
class CalendarTimeTTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  CalendarTimeTTabContainerController(this.calendarTimeTTabContainerModelObj);

  Rx<CalendarTimeTTabContainerModel> calendarTimeTTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
