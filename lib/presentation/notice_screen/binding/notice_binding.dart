import '../controller/notice_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoticeScreen.
///
/// This class ensures that the NoticeController is created when the
/// NoticeScreen is first loaded.
class NoticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticeController());
  }
}
