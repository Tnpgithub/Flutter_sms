import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [message_individual_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageIndividualModel {
  Rx<List<UserprofileItemModel>> userprofileItemList =
      Rx(List.generate(6, (index) => UserprofileItemModel(secondText: "", text: "", image: "")));
}
