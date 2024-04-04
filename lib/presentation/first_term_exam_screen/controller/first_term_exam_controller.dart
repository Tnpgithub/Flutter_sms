import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/first_term_exam_screen/models/first_term_exam_model.dart';/// A controller class for the FirstTermExamScreen.
///
/// This class manages the state of the FirstTermExamScreen, including the
/// current firstTermExamModelObj
class FirstTermExamController extends GetxController {Rx<FirstTermExamModel> firstTermExamModelObj = FirstTermExamModel().obs;

 }
