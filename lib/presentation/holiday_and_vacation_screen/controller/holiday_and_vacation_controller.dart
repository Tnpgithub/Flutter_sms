import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/holiday_and_vacation_screen/models/holiday_and_vacation_model.dart';/// A controller class for the HolidayAndVacationScreen.
///
/// This class manages the state of the HolidayAndVacationScreen, including the
/// current holidayAndVacationModelObj
class HolidayAndVacationController extends GetxController {Rx<HolidayAndVacationModel> holidayAndVacationModelObj = HolidayAndVacationModel().obs;

 }
