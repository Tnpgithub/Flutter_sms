import '../controller/leave_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LeaveScreen.
///
/// This class ensures that the LeaveController is created when the
/// LeaveScreen is first loaded.
class LeaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaveController());
  }
}
