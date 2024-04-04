import '../controller/home_work_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeWorkScreen.
///
/// This class ensures that the HomeWorkController is created when the
/// HomeWorkScreen is first loaded.
class HomeWorkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeWorkController());
  }
}
