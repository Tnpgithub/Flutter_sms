import 'package:student_app/Services/upcoming_events_api.dart';
import 'package:student_app/presentation/home_page/models/upcoming_events.dart';

import '../home_page/widgets/upcoming_event_common.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class UpcomingEventsScreen extends StatefulWidget {
  UpcomingEventsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<UpcomingEventsScreen> createState() => _UpcomingEventsScreenState();
}

class _UpcomingEventsScreenState extends State<UpcomingEventsScreen> {
  List<UpcomingEvents> events = [];

  @override
  void initState() {
    super.initState();
    fetchEvents();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Column(children: [
      Container(
          padding: EdgeInsets.symmetric(vertical: 21.v),
          decoration: AppDecoration.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 4.v),
            CustomAppBar(
                leadingWidth: 44.h,
                leading: AppbarImage2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 6.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_upcoming_events".tr))
          ])),
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
          child: GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 206.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.h),
              physics: BouncingScrollPhysics(),
              itemCount: events.length,
              itemBuilder: (context, index) {
                return UpcomingEventCommon(
                    name: events[index].name,
                    date_formatted: events[index].date_formatted,
                    photo_url: events[index].photo_url);
              }),
        ),
      ),
    ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  Future<void> fetchEvents() async {
    final response = await NoticeApi.fetchNotices('Event', 5, 0);

    setState(() {
      events = response;
    });
  }
}
