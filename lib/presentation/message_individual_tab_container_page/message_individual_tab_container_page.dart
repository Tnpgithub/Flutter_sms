import 'controller/message_individual_tab_container_controller.dart';
import 'models/message_individual_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/message_groups_one_page/message_groups_one_page.dart';
import 'package:student_app/presentation/message_individual_page/message_individual_page.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MessageIndividualTabContainerPage extends StatelessWidget {
  MessageIndividualTabContainerPage({Key? key}) : super(key: key);

  MessageIndividualTabContainerController controller = Get.put(
      MessageIndividualTabContainerController(
          MessageIndividualTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  Scaffold(
        appBar: CustomAppBar(
            height: 70.v,
            leadingWidth: 44.h,
            // leading: AppbarImage2(
            //     svgPath: ImageConstant.imgArrowleft,
            //     margin:
            //     EdgeInsets.only(left: 20.h, top: 14.v, bottom: 17.v),
            //     onTap: () {
            //       onTapArrowleftone();
            //     }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_message".tr)),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 28.v),
              Container(
                  height: 32.v,
                  width: 388.h,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: theme.colorScheme.primary,
                    labelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelColor: appTheme.gray700,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                    indicatorColor: theme.colorScheme.primary,
                    tabs: [
                      Tab(
                        child: Text(
                          "Individual".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Groups".tr,
                        ),
                      ),
                    ],
                  ),),
              Expanded(
                child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      MessageIndividualPage(),
                      MessageGroupsOnePage()
                    ]),
              )
            ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.toNamed(AppRoutes.homeContainerScreen,);
  }
}
