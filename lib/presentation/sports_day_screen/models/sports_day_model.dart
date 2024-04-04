import '../../../core/app_export.dart';
import 'sports_day_item_model.dart';

/// This class defines the variables used in the [sports_day_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SportsDayModel {
  Rx<List<SportsDayItemModel>> sportsDayItemList =
      Rx(List.generate(8, (index) => SportsDayItemModel(image: "")));
}
