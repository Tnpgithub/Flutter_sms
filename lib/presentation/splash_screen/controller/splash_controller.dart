import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/splash_screen/models/splash_model.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  Future<void> onReady() async {
   bool isLogin = await PrefUtils.getLogin();
   bool isIntro = await PrefUtils.getIntro();
   print("isLogin=============$isLogin");
   Future.delayed(
    const Duration(seconds: 3),() {
    if(isIntro) {
     Get.toNamed(AppRoutes.onboardingOneScreen,);
     // CommonMethod.sendToNextScreen(context, RoutesPath.onBoardingScreen);
    }
    else if (isLogin) {
     Get.toNamed(AppRoutes.loginScreen,);
     // CommonMethod.sendToNextScreen(context, RoutesPath.signUpScreen);
     debugPrint("is Login ==== $isLogin");
    } else {
     Get.toNamed(AppRoutes.homeContainerScreen,);
     // CommonMethod.sendToNextScreen(context, RoutesPath.commonBottomBar);
    }
   },
   );
   // Future.delayed(const Duration(milliseconds: 3000), () {
   //   Get.offNamed(
   //     AppRoutes.homeContainerScreen,
   //   );
   // });
  }
}
