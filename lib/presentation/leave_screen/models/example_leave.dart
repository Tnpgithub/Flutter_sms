import '../../../core/app_export.dart';
import 'sectionlistsept_item_model.dart';

/// This class defines the variables used in the [leave_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExampleLeave {
  Rx<List<SectionlistseptItemModel>> sectionlistseptItemList = Rx([
    SectionlistseptItemModel(
        date: "Wed, 10 Sep".tr,
        leaveText: "Half Day Leave".tr,
        responseText: "Waiting".tr),
    SectionlistseptItemModel(
        date: "Sat, 05 Sep".tr,
        leaveText: "Full  Day Leave".tr,
        responseText: "Cancelled".tr),
    SectionlistseptItemModel(
      date: "Wed, 10 Sep".tr,
      leaveText: "Full  Day Leave".tr,
      responseText: "Approved".tr,
    ),
    SectionlistseptItemModel(
      date: "Mon, 28 Aug".tr,
      leaveText: "Half Day Leave".tr,
      responseText: "Approved".tr,
    ),
    SectionlistseptItemModel(
      date: "Tue, 15 Aug".tr,
      leaveText: "Full Day Leave".tr,
      responseText: "Approved".tr,
    ),
    SectionlistseptItemModel(
      date: "Fri, 1 Aug To 4 ".tr,
      leaveText: "4 Day Leave".tr,
      responseText: "Approved".tr,
    )
  ]);
}
