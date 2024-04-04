import '../controller/apply_leave_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyLeaveScreen.
///
/// This class ensures that the ApplyLeaveController is created when the
/// ApplyLeaveScreen is first loaded.
class ApplyLeaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyLeaveController());
  }
}
