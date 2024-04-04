import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/calendar_time_t_page/models/calendar_time_t_model.dart';

/// A controller class for the CalendarTimeTPage.
///
/// This class manages the state of the CalendarTimeTPage, including the
/// current calendarTimeTModelObj
class CalendarTimeTController extends GetxController {
  CalendarTimeTController(this.calendarTimeTModelObj);

  Rx<CalendarTimeTModel> calendarTimeTModelObj;
}
class Lecture {
  final String time;
  final String subject;
  final String location;

  Lecture({required this.time, required this.subject, required this.location});
}

final List<Lecture> lectures = [
  Lecture(time: "07:15", subject: "Mathematics", location: "(Jenny Wilson)"),
  Lecture(time: "08:15", subject: "English", location: "(Floyd Miles)"),
  Lecture(time: "09:15", subject: "Social Science", location: "(Albert Flores)"),
  Lecture(time: "09:30", subject: "Gujarati", location: "(Kathryn Murphy)"),
  Lecture(time: "10:30", subject: "Hindi", location: "(Savannah Nguyen)"),
  Lecture(time: "11:30", subject: "Science", location: "(Wade Warren)"),
  Lecture(time: "12:30", subject: "Mathematics", location: "(Jenny Wilson)"),

  // Add more lecture items as needed
];