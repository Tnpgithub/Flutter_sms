import '../../../core/app_export.dart';
import 'listdatetext_item_model.dart';

/// This class defines the variables used in the [notice_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NoticeModel {
  Rx<List<ListdatetextItemModel>> listdatetextItemList =
      Rx(List.generate(4, (index) => ListdatetextItemModel(text: "", date: "")));
}
