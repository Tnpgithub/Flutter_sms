import 'dart:collection';

import 'package:intl/intl.dart';
import 'package:student_app/presentation/calendar_page/widgets/userItem.dart';
import 'package:student_app/presentation/calendar_time_t_tab_container_page/models/event_model.dart';
import 'package:student_app/widgets/table_calander_custom.dart' as datePicker;
import 'package:table_calendar/table_calendar.dart';

import 'controller/calendar_controller.dart';
import 'models/searchpresent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class CalendarPage extends StatelessWidget {
  CalendarPage({Key? key})
      : super(
          key: key,
        );

  CalendarController controller = Get.put(CalendarController());

  static DateFormat showDateFormatter = DateFormat("dd.MM.yyyy");

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(

            children: [
              SizedBox(
                height: 32.h,
              ),
              Container(
                width: 388.h,
                height: 400.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                decoration: ShapeDecoration(
                  color: Color(0xFFF8F8F8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: GetBuilder<CalendarController>(
                  init: CalendarController(),
                  builder: (controller) {
                    print("hbaf==${controller.time}");
                    return datePicker.TableCalendar(
                      firstDay: DateTime.utc(2023, 1, 1),
                      lastDay: DateTime.utc(2025, 12, 31),
                      focusedDay: controller.time,

                      pageJumpingEnabled: true,
                      eventLoader: (day) {

                        print(
                            "day==${showDateFormatter.format(day)}===${showDateFormatter.format(DateTime.now())}");
                        // if (showDateFormatter.format(day) ==
                        //     showDateFormatter.format(DateTime.now())) {
                        //   return [
                        //     DateTime(2023, 9, 1).add(Duration(days: 3)),
                        //      DateTime(2023, 9, 8),
                        //      DateTime(2023, 9, 9),
                        //      DateTime(2023, 9, 10),
                        //      DateTime(2023, 9, 15),
                        //      DateTime(2023, 9, 19),
                        // //     DateTime(2023, 9, 4),
                        // //     DateTime(2023, 9, 11),
                        // //     DateTime(2023, 9, 18),
                        // //     DateTime.now(),
                        // //     DateTime.now().add(Duration(days: 1)),
                        // //     DateTime.now().add(Duration(days: 5)),
                        //   ];
                        // }
                        return [];
                      },
                      sixWeekMonthsEnforced: true,
                      calendarFormat: CalendarFormat.month,
                      pageAnimationEnabled: true,
                      startingDayOfWeek: StartingDayOfWeek.sunday,
                      calendarStyle: CalendarStyle(
                        todayTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                        disabledTextStyle: TextStyle(
                          color: Color(0xFF222B45),
                          fontSize: 16.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                        selectedTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                        todayDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          color: theme.colorScheme.primary,
                          shape: BoxShape.rectangle,
                        ),
                        selectedDecoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      currentDay: controller.time,

                      onDaySelected: (selectedDay, focusedDay) {
                        print("Selected Day: ========$selectedDay");
                        controller.onChang(selectedDay);
                      },
                      // calendarBuilders: CalendarBuilders(
                      //   markerBuilder: (context, date, events) {
                      //     if (events.isNotEmpty) {
                      //       return Positioned(
                      //         right: 1,
                      //         bottom: 1,
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //             shape: BoxShape.circle,
                      //             color: Colors.red,
                      //           ),
                      //           width: 16.0,
                      //           height: 16.0,
                      //           child: Center(
                      //             child: Text(
                      //               '${events.length}',
                      //               style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontSize: 12.0,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       );
                      //     }
                      //     return SizedBox();
                      //   },
                      // ),
                    );
                  },
                )
              ),

              // TableCalendar(
              //     focusedDay: DateTime.now(),
              //     firstDay: DateTime.now(),
              //     lastDay: DateTime.now(),
              // ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 90.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  // padding: EdgeInsets.symmetric(horizontal: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount: presentList.length,
                  itemBuilder: (context, index) {
                    return UserProfilerowItemWidget(
                      color: presentList[index].color,
                      text: presentList[index].text,
                      image: presentList[index].image,
                      second: presentList[index].second,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class TableEventsExample extends StatefulWidget {
  @override
  _TableEventsExampleState createState() => _TableEventsExampleState();
}

class _TableEventsExampleState extends State<TableEventsExample> {
  Map<DateTime, List<EventModel>> _eventsList = {};

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  void initState() {
    super.initState();
    _eventsList = {
      DateTime.now().subtract(Duration(days: 4)): [EventModel('Event A1',Colors.red), ],
      DateTime.now().subtract(Duration(days: 9)): [EventModel('Event A1',theme.colorScheme.primary)],
      DateTime.now().subtract(Duration(days: 5)): [EventModel('Event A1',theme.colorScheme.primary)],
      DateTime.now().subtract(Duration(days: 1)): [EventModel('Event A1',theme.colorScheme.primary)],
      DateTime.now().subtract(Duration(days: 8)): [EventModel('Event A1',Colors.red)],
      // DateTime.now().add(Duration(days: 1)): [
      //   'Event A3',
      //
      // ],
      // DateTime.now().add(Duration(days: 3)):
      // Set.from([ 'Event B4']).toList(),
      // DateTime.now().add(Duration(days: 15)): [
      //   'Event A6',
      // ],
    };
  }
  CalendarController controller = Get.put(CalendarController());

  @override
  Widget build(BuildContext context) {
    final _events = LinkedHashMap<DateTime, List<EventModel>>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventsList);

    List<EventModel> getEventForDay(DateTime day) {
      return _events[day] ?? [];
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(

            children: [
              SizedBox(
                height: 32.h,
              ),
              Container(
                  width: 388.h,
                  height: 400.h,
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF8F8F8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: GetBuilder<CalendarController>(
                    init: CalendarController(),
                    builder: (controller) {
                      print("hbaf==${controller.time}");
                      return datePicker.TableCalendar(
                        firstDay: DateTime.utc(2023, 1, 1),
                        lastDay: DateTime.utc(2025, 12, 31),
                        focusedDay: controller.time,
                        eventLoader: getEventForDay,

                        pageJumpingEnabled: true,
                        // eventLoader: (day) {
                        //
                        //   print(
                        //       "day==${showDateFormatter.format(day)}===${showDateFormatter.format(DateTime.now())}");
                        //   if (showDateFormatter.format(day) ==
                        //       showDateFormatter.format(DateTime.now())) {
                        //     return [
                        //       DateTime(2023, 9, 1).add(Duration(days: 3)),
                        //       DateTime(2023, 9, 8),
                        //       DateTime(2023, 9, 9),
                        //       DateTime(2023, 9, 10),
                        //       DateTime(2023, 9, 15),
                        //       DateTime(2023, 9, 19),
                        //       //     DateTime(2023, 9, 4),
                        //       //     DateTime(2023, 9, 11),
                        //       //     DateTime(2023, 9, 18),
                        //       //     DateTime.now(),
                        //       //     DateTime.now().add(Duration(days: 1)),
                        //       //     DateTime.now().add(Duration(days: 5)),
                        //     ];
                        //   }
                        //   return [];
                        // },
                        sixWeekMonthsEnforced: true,
                        calendarFormat: CalendarFormat.month,
                        pageAnimationEnabled: true,
                        startingDayOfWeek: StartingDayOfWeek.sunday,
                        calendarStyle: CalendarStyle(
                          todayTextStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.fSize,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                          disabledTextStyle: TextStyle(
                            color: Color(0xFF222B45),
                            fontSize: 16.fSize,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                          selectedTextStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14.fSize,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                          todayDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            color: theme.colorScheme.primary,
                            shape: BoxShape.rectangle,
                          ),
                          selectedDecoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        currentDay: controller.time,

                        onDaySelected: (selectedDay, focusedDay) {
                          print("Selected Day: ========$selectedDay");
                          controller.onChang(selectedDay);
                        },
                        // calendarBuilders: CalendarBuilders(
                        //   markerBuilder: (context, date, events) {
                        //     if (events.isNotEmpty) {
                        //       return Positioned(
                        //         right: 1,
                        //         bottom: 1,
                        //         child: Container(
                        //           decoration: BoxDecoration(
                        //             shape: BoxShape.circle,
                        //             color: Colors.red,
                        //           ),
                        //           width: 16.0,
                        //           height: 16.0,
                        //           child: Center(
                        //             child: Text(
                        //               '${events.length}',
                        //               style: TextStyle(
                        //                 color: Colors.white,
                        //                 fontSize: 12.0,
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       );
                        //     }
                        //     return SizedBox();
                        //   },
                        // ),
                      );
                    },
                  )
              ),

              // TableCalendar(
              //     focusedDay: DateTime.now(),
              //     firstDay: DateTime.now(),
              //     lastDay: DateTime.now(),
              // ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 90.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  // padding: EdgeInsets.symmetric(horizontal: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                      context,
                      index,
                      ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount: presentList.length,
                  itemBuilder: (context, index) {
                    return UserProfilerowItemWidget(
                      color: presentList[index].color,
                      text: presentList[index].text,
                      image: presentList[index].image,
                      second: presentList[index].second,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}