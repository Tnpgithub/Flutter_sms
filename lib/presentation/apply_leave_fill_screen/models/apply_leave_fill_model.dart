import '../../../core/app_export.dart';/// This class defines the variables used in the [apply_leave_fill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ApplyLeaveFillModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<DateTime>? selectedDate = Rx(DateTime.now());

Rx<String> date = Rx("10 Sep 2023");

 }
