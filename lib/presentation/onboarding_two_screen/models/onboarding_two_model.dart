import '../../../core/app_export.dart';import 'activitytracker_item_model.dart';/// This class defines the variables used in the [onboarding_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingTwoModel {Rx<List<ActivitytrackerItemModel>> activitytrackerItemList = Rx(List.generate(1,(index) => ActivitytrackerItemModel()));

 }
