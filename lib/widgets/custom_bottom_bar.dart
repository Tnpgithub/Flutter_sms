import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

import '../presentation/calendar_time_t_tab_container_page/calendar_time_t_tab_container_page.dart';
import '../presentation/home_container_screen/controller/bottom_controller.dart';
import '../presentation/home_page/home_page.dart';
import '../presentation/message_individual_tab_container_page/message_individual_tab_container_page.dart';
import '../presentation/profile_page/profile_page.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
    key: key,
  );

  BottomBarController controller = Get.find();
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.home,
      activeIcon: ImageConstant.homeFill,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
      widget: HomePage(),
    ),
    BottomMenuModel(
      icon: ImageConstant.calander,
      activeIcon: ImageConstant.clanderFill,
      title: "Calendar".tr,
      type: BottomBarEnum.calander,
      widget: CalendarTimeTTabContainerPage(),
    ),
    BottomMenuModel(
      icon: ImageConstant.messageOne,
      activeIcon: ImageConstant.meassageFill,
      title: "lbl_message".tr,
      type: BottomBarEnum.Message,
      widget: MessageIndividualTabContainerPage(),
    ),
    BottomMenuModel(
      icon: ImageConstant.profile,
      activeIcon: ImageConstant.profileFill,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
      widget: ProfilePage(),
    )
  ];

  Function(BottomMenuModel)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0, 2,
            ),
          ),
        ],
      ),
      child: Obx(
            () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    // color: theme.colorScheme.errorContainer,
                    margin: EdgeInsets.only(top: 20.v),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.gray700,
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    // color: theme.colorScheme.primary,
                    margin: EdgeInsets.only(top: 20.v),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallBlack900.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index]);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  calander,
  Message,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    required this.widget,
  });

  String icon;

  String activeIcon;

  String? title;
  Widget? widget;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
