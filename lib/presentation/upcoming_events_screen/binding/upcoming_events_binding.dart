import '../controller/upcoming_events_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingEventsScreen.
///
/// This class ensures that the UpcomingEventsController is created when the
/// UpcomingEventsScreen is first loaded.
class UpcomingEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingEventsController());
  }
}
