import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/message_groups_screen/models/message_groups_model.dart';/// A controller class for the MessageGroupsScreen.
///
/// This class manages the state of the MessageGroupsScreen, including the
/// current messageGroupsModelObj
class MessageGroupsController extends GetxController {Rx<MessageGroupsModel> messageGroupsModelObj = MessageGroupsModel().obs;

 }
