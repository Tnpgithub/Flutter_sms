import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/upcoming_events_screen/models/upcoming_events_model.dart';/// A controller class for the UpcomingEventsScreen.
///
/// This class manages the state of the UpcomingEventsScreen, including the
/// current upcomingEventsModelObj
class UpcomingEventsController extends GetxController {Rx<UpcomingEventsModel> upcomingEventsModelObj = UpcomingEventsModel().obs;

 }
