import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/message_individual_page/models/message_individual_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageIndividualPage.
///
/// This class manages the state of the MessageIndividualPage, including the
/// current messageIndividualModelObj
class MessageIndividualController extends GetxController {MessageIndividualController(this.messageIndividualModelObj);

TextEditingController searchController = TextEditingController();

Rx<MessageIndividualModel> messageIndividualModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
