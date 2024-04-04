import '../controller/select_role_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectRoleScreen.
///
/// This class ensures that the SelectRoleController is created when the
/// SelectRoleScreen is first loaded.
class SelectRoleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectRoleController());
  }
}
