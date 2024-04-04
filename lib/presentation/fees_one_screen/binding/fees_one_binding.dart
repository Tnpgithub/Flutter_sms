import '../controller/fees_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FeesOneScreen.
///
/// This class ensures that the FeesOneController is created when the
/// FeesOneScreen is first loaded.
class FeesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeesOneController());
  }
}
