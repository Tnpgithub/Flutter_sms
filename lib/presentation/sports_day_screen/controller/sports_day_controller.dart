import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/sports_day_screen/models/sports_day_model.dart';/// A controller class for the SportsDayScreen.
///
/// This class manages the state of the SportsDayScreen, including the
/// current sportsDayModelObj
class SportsDayController extends GetxController {Rx<SportsDayModel> sportsDayModelObj = SportsDayModel().obs;

 }
