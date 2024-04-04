import '../controller/community_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CommunityScreen.
///
/// This class ensures that the CommunityController is created when the
/// CommunityScreen is first loaded.
class CommunityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommunityController());
  }
}
