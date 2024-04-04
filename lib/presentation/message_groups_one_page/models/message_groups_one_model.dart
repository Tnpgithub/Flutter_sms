import '../../../core/app_export.dart';
import 'list7th_grade_b_item_model.dart';

/// This class defines the variables used in the [message_groups_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageGroupsOneModel {
  Rx<List<List7thGradeBItemModel>> list7thGradeBItemList =
      Rx(List.generate(3, (index) => List7thGradeBItemModel()));
}
