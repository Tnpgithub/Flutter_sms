import '../controller/apply_leave_fill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyLeaveFillScreen.
///
/// This class ensures that the ApplyLeaveFillController is created when the
/// ApplyLeaveFillScreen is first loaded.
class ApplyLeaveFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyLeaveFillController());
  }
}
