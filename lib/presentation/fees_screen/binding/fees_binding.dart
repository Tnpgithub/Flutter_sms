import '../controller/fees_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FeesScreen.
///
/// This class ensures that the FeesController is created when the
/// FeesScreen is first loaded.
class FeesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeesController());
  }
}
