import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/fees_screen/models/example_model.dart';

/// A controller class for the FeesScreen.
///
/// This class manages the state of the FeesScreen, including the
/// current feesModelObj
class FeesController extends GetxController {
  Rx<FeesModel> feesModelObj = FeesModel().obs;
}
