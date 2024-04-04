import '../../../core/app_export.dart';

/// This class defines the variables used in the [apply_leave_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ApplyLeaveModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Sick",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Casual",
    ),
  ]);

  Rx<DateTime>? selectedTypehere = Rx(DateTime.now());
  Rx<DateTime>? selectDate = Rx(DateTime.now());

  Rx<String> typehere = Rx("End Date");
  Rx<String>date = Rx("Start Date");
}
