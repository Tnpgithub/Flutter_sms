import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_bottom_bar.dart';

import '../../home_page/home_page.dart';

class BottomBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  Widget viewWidget = HomePage();

  onExit(BuildContext context) {
    print("index===$selectedIndex");
    if (selectedIndex.value != 0) {
      selectedIndex.value = 0;
      onChange(HomePage());
      update();
    } else {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(16.h)),
          insetPadding: EdgeInsets.only(left: 16, right: 16),
          title: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text('Are you sure you want to Exit ?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.fSize,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: theme.colorScheme.primary,
                                width: 1.5,
                              )),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14.h, bottom: 14.h),
                            child: Center(
                              child: Text(
                                'No',
                                style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 18.h.fSize,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                        if (Platform.isIOS) {
                          exit(0);
                        } else {
                          SystemNavigator.pop();
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.h),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.h),
                            color: theme.colorScheme.primary,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14, bottom: 14),
                            child: Center(
                              child: Text(
                                'Yes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.fSize,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

    }
  }

  onChange(Widget type) {
    viewWidget = type;
    update();
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.calander:
        return AppRoutes.calendarPage;
      case BottomBarEnum.Message:
        return AppRoutes.messageIndividualTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }
}
