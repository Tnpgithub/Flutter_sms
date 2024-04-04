import '../controller/message_groups_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageGroupsScreen.
///
/// This class ensures that the MessageGroupsController is created when the
/// MessageGroupsScreen is first loaded.
class MessageGroupsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageGroupsController());
  }
}
