import 'controller/calendar_time_t_tab_container_controller.dart';
import 'models/calendar_time_t_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/calendar_page/calendar_page.dart';
import 'package:student_app/presentation/calendar_time_t_page/calendar_time_t_page.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class CalendarTimeTTabContainerPage extends StatelessWidget {
  CalendarTimeTTabContainerPage({Key? key})
      : super(
          key: key,
        );

  CalendarTimeTTabContainerController controller = Get.put(
      CalendarTimeTTabContainerController(
          CalendarTimeTTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        height: 68.v,
        centerTitle: true,
        title: AppbarTitle(
          text: "lbl_calendar".tr,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 31.v),
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
                    "lbl_attendance".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_time_table".tr,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabviewController,
              children: [
                TableEventsExample(),
                CalendarTimeTPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
