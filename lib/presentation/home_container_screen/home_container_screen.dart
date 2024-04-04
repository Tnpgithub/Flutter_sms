import 'package:student_app/presentation/home_container_screen/controller/bottom_controller.dart';

import '../../widgets/custom_appBar.dart';
import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomBarController controller =Get.put(BottomBarController());
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () {
        return controller.onExit(context);
      },
      child: Scaffold(
        appBar: customAppBarSecond(
          appBarColor: Colors.transparent,
          height: 0,
        ),
        body: GetBuilder<BottomBarController>(builder: (controller) {
          return controller.viewWidget;
        },init: BottomBarController(),),
        bottomNavigationBar:  CustomBottomBar(
            onChanged: (BottomMenuModel type) {

              // Get.toNamed(controller.getCurrentRoute(type), id: 1);
              controller.onChange(type.widget!);

            })
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.calander:
        return AppRoutes.calendarTimeTTabContainerPage;
      case BottomBarEnum.Message:
        return AppRoutes.messageIndividualTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homePage:
  //       return HomePage(bottomBarController: );
  //     case AppRoutes.calendarTimeTTabContainerPage:
  //       return CalendarTimeTTabContainerPage();
  //     case AppRoutes.messageIndividualTabContainerPage:
  //       return MessageIndividualTabContainerPage();
  //     case AppRoutes.profilePage:
  //       return ProfilePage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
