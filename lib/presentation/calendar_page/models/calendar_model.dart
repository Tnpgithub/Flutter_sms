import '../../../core/app_export.dart';
import 'searchpresent_item_model.dart';

/// This class defines the variables used in the [calendar_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CalendarModel {
  Rx<List<SearchpresentItemModel>> searchpresentItemList =
      Rx(List.generate(3, (index) => SearchpresentItemModel()));
}
