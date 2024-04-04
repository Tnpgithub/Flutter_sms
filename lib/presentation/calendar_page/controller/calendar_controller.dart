import 'package:student_app/core/app_export.dart';/// A controller class for the CalendarPage.
///
/// This class manages the state of the CalendarPage, including the
/// current calendarModelObj
class CalendarController extends GetxController {CalendarController();

DateTime time=DateTime.now();

onChang(DateTime dateTime){
 time=dateTime;
 update();
}
 }
