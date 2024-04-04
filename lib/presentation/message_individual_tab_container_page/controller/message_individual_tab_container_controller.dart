import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/message_individual_tab_container_page/models/message_individual_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageIndividualTabContainerPage.
///
/// This class manages the state of the MessageIndividualTabContainerPage, including the
/// current messageIndividualTabContainerModelObj
class MessageIndividualTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {MessageIndividualTabContainerController(this.messageIndividualTabContainerModelObj);

Rx<MessageIndividualTabContainerModel> messageIndividualTabContainerModelObj;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
