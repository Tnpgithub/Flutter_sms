import '../../../core/app_export.dart';
import 'sportsday_item_model.dart';

/// This class defines the variables used in the [upcoming_events_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UpcomingEventsModel {
  Rx<List<SportsdayItemModel>> sportsdayItemList =
      Rx(List.generate(6, (index) => SportsdayItemModel(text: "", image: "", date: "")));
}
