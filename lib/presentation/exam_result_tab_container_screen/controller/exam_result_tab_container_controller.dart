import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/exam_result_tab_container_screen/models/exam_result_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ExamResultTabContainerScreen.
///
/// This class manages the state of the ExamResultTabContainerScreen, including the
/// current examResultTabContainerModelObj
class ExamResultTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ExamResultTabContainerModel> examResultTabContainerModelObj = ExamResultTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
