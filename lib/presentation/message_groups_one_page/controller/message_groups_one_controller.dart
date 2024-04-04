import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/message_groups_one_page/models/message_groups_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageGroupsOnePage.
///
/// This class manages the state of the MessageGroupsOnePage, including the
/// current messageGroupsOneModelObj
class MessageGroupsOneController extends GetxController {MessageGroupsOneController(this.messageGroupsOneModelObj);

TextEditingController searchController = TextEditingController();

Rx<MessageGroupsOneModel> messageGroupsOneModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
