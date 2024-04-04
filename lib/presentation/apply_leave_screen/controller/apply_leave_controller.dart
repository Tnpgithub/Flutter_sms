import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/apply_leave_screen/models/apply_leave_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ApplyLeaveScreen.
///
/// This class manages the state of the ApplyLeaveScreen, including the
/// current applyLeaveModelObj
class ApplyLeaveController extends GetxController {
  TextEditingController reasonforleaveController = TextEditingController();

  Rx<ApplyLeaveModel> applyLeaveModelObj = ApplyLeaveModel().obs;

  Rx<bool> halfDayLeave = false.obs;

  Rx<bool> fullDayLeave = false.obs;

  SelectionPopupModel? selectedDropDownValue;
  RxInt index=0.obs;
  @override
  void onClose() {
    super.onClose();
    reasonforleaveController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in applyLeaveModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    applyLeaveModelObj.value.dropdownItemList.refresh();
  }
}
