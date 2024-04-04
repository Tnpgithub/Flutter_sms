import '../controller/sports_day_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SportsDayScreen.
///
/// This class ensures that the SportsDayController is created when the
/// SportsDayScreen is first loaded.
class SportsDayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SportsDayController());
  }
}
