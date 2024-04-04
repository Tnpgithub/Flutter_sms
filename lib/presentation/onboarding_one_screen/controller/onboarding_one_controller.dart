import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';/// A controller class for the OnboardingOneScreen.
///
/// This class manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj
class OnboardingOneController extends GetxController {Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;

int sliderIndex = 0;
onChange(value){
 sliderIndex=value;
 update();
}

PageController pageController=PageController();

List<String>image=[
 ImageConstant.onBordOne,
 ImageConstant.onBordTwo,
 ImageConstant.onBordThree,
];
List<String>text=[
 "msg_check_your_kids".tr,
 "msg_track_all_activity".tr,
 "msg_chat_with_any_student".tr,
];

 }
