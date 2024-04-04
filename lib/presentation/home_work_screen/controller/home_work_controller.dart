import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/home_work_screen/models/home_work_model.dart';/// A controller class for the HomeWorkScreen.
///
/// This class manages the state of the HomeWorkScreen, including the
/// current homeWorkModelObj
class HomeWorkController extends GetxController {Rx<HomeWorkModel> homeWorkModelObj = HomeWorkModel().obs;

 }
