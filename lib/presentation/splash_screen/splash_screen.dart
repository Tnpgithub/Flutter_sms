import '../../widgets/custom_appBar.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        PrefUtils.closeApp();
        return false;
      },
      child: Scaffold(
          appBar: customAppBarSecond(height: 0),
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.v),
                Center(
                  child: Image.asset(
                    'assets/images/splash_screen.png',
                    height: 300,
                    width: 300,
                  ),
                )
              ])),
    );
  }
}
