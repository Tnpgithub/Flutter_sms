import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/leave_screen/models/example_leave.dart';

/// A controller class for the LeaveScreen.
///
/// This class manages the state of the LeaveScreen, including the
/// current leaveModelObj
class LeaveController extends GetxController {
  Rx<ExampleLeave> leaveModelObj = ExampleLeave().obs;
}
