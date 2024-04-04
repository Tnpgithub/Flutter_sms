import '../../../core/app_export.dart';
import 'community_item_model.dart';

/// This class defines the variables used in the [community_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CommunityModel {
  Rx<List<CommunityItemModel>> communityItemList =
      Rx(List.generate(3, (index) => CommunityItemModel(date: "", days: "", image: "")));
}
