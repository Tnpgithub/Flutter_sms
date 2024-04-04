import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/select_role_screen/models/select_role_model.dart';/// A controller class for the SelectRoleScreen.
///
/// This class manages the state of the SelectRoleScreen, including the
/// current selectRoleModelObj
class SelectRoleController extends GetxController {Rx<SelectRoleModel> selectRoleModelObj = SelectRoleModel().obs;

 }
