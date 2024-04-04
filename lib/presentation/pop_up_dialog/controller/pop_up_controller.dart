import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/pop_up_dialog/models/pop_up_model.dart';

/// A controller class for the PopUpDialog.
///
/// This class manages the state of the PopUpDialog, including the
/// current popUpModelObj
class PopUpController extends GetxController {
  Rx<PopUpModel> popUpModelObj = PopUpModel().obs;
}
