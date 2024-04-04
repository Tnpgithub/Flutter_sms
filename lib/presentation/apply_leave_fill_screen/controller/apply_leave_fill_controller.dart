import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/apply_leave_fill_screen/models/apply_leave_fill_model.dart';import 'package:flutter/material.dart';/// A controller class for the ApplyLeaveFillScreen.
///
/// This class manages the state of the ApplyLeaveFillScreen, including the
/// current applyLeaveFillModelObj
class ApplyLeaveFillController extends GetxController {TextEditingController descriptionController = TextEditingController();

Rx<ApplyLeaveFillModel> applyLeaveFillModelObj = ApplyLeaveFillModel().obs;

Rx<bool> halfDayLeave = false.obs;

Rx<bool> fullDayLeave = false.obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); descriptionController.dispose(); } 
onSelected(dynamic value) { for (var element in applyLeaveFillModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} applyLeaveFillModelObj.value.dropdownItemList.refresh(); } 
 }
