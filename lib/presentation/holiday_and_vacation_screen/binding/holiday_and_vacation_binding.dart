import '../controller/holiday_and_vacation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HolidayAndVacationScreen.
///
/// This class ensures that the HolidayAndVacationController is created when the
/// HolidayAndVacationScreen is first loaded.
class HolidayAndVacationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HolidayAndVacationController());
  }
}
