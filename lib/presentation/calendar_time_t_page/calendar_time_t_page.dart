import 'package:student_app/presentation/calendar_time_t_page/time_line_sell.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'controller/calendar_time_t_controller.dart';
import 'models/calendar_time_t_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class CalendarTimeTPage extends StatelessWidget {
  CalendarTimeTPage({Key? key})
      : super(
          key: key,
        );

  CalendarTimeTController controller =
      Get.put(CalendarTimeTController(CalendarTimeTModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body:  Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 0.v),
            child: Column(
                children: [
                  SizedBox(height: 26.h,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    svgPath: ImageConstant.imgCalendarBlack900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 12.h, top: 3.v),
                    child: Text("msg_18_september_2023".tr,
                        style: theme.textTheme.titleMedium)),
                Spacer(),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Text("lbl_today".tr,
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 34.v),
              Container(
                  height: 46.h,
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.h, vertical: 14.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(children: [
                    Text("lbl_time".tr, style: theme.textTheme.titleSmall),
                    Padding(
                        padding: EdgeInsets.only(left: 95.h),
                        child: Text("lbl_class".tr,
                            style: theme.textTheme.titleSmall))
                  ])),


              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  // padding: EdgeInsets.zero,
                  padding: EdgeInsets.only(bottom: 10),
                  itemCount: lectures.length,
                  itemBuilder: (context, index) {
                    final lecture = lectures[index];
                    return TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.2,
                      isFirst: index == 0,
                      isLast: index == lectures.length - 1,
                      indicatorStyle:  IndicatorStyle(
                        width: 10,
                        height:10,
                        indicator: Container(
                          padding: EdgeInsets.all(50.h),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        // indicator: Icon(Icons.add),
                        drawGap: false,
                      ),
                      beforeLineStyle: LineStyle(
                        thickness: 2,
                        color: theme.colorScheme.primary,
                      ),
                      startChild: Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          lecture.time,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.fSize,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      endChild: Padding(
                        padding:  EdgeInsets.only(left: 32,right: 20,top: 30.h),
                        child: TimeTableSell(
                          text: lecture.location,
                          subName: lecture.subject,
                          // padding: EdgeInsets.all(16.h),
                          //
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(12.h),
                          //   border: Border.all(
                          //     color: Colors.grey,
                          //   ),
                          // ),
                          // child: Row(
                          //   children: [
                          //     Text(lecture.subject,style: TextStyle(
                          //         color: Colors.black,
                          //         fontWeight: FontWeight.w700,
                          //         fontSize: 16
                          //     ),),
                          //     Expanded(child: Padding(
                          //       padding: const EdgeInsets.only(left: 16),
                          //       child: Text(lecture.location,style: TextStyle(),maxLines: 1,),
                          //     ))
                          //   ],
                          // ),

                        ),
                      ),
                    );
                  },
                ),
              ),
              // Padding(
              //     padding:
              //     EdgeInsets.only(left: 8.h, top: 24.v, bottom: 5.v),
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           // Expanded(
              //           //   child: Timeline(
              //           //     shrinkWrap: true,
              //           //     lineWidth: 2,
              //           //     children: <TimelineModel>[
              //           //       TimelineModel(
              //           //         Container(
              //           //           height: 100,
              //           //           child: Center(
              //           //             child: Text("data"),
              //           //           ),
              //           //         ),
              //           //         icon: Icon(Icons.receipt, color: Colors.white),
              //           //         // iconBackground: Colors.blue,
              //           //       ),
              //           //       TimelineModel(
              //           //         Container(
              //           //           height: 100,
              //           //           child: Center(
              //           //             child: Text("data"),
              //           //           ),
              //           //         ),
              //           //         icon: Icon(Icons.android),
              //           //         iconBackground: Colors.cyan,
              //           //       ),
              //           //     ],
              //           //     position: TimelinePosition.Left,
              //           //     iconSize: 40,
              //           //     lineColor: Colors.blue,
              //           //   ),
              //           // ) ,
              //     //Timeline
              //           Container(
              //               height: 497.v,
              //               width: 84.h,
              //               margin: EdgeInsets.only(top: 3.v),
              //               child: Stack(
              //                   alignment: Alignment.center,
              //                   children: [
              //                     Align(
              //                         alignment: Alignment.centerRight,
              //                         child: Padding(
              //                             padding:
              //                             EdgeInsets.only(right: 4.h),
              //                             child: SizedBox(
              //                                 height: 481.v,
              //                                 child: VerticalDivider(
              //                                     width: 2.h,
              //                                     thickness: 2.v,
              //                                     color: theme.colorScheme
              //                                         .primary)))),
              //                     Align(
              //                         alignment: Alignment.center,
              //                         child: Column(
              //                             mainAxisSize: MainAxisSize.min,
              //                             children: [
              //                               SizedBox(
              //                                   width: 84.h,
              //                                   child: Row(
              //                                       mainAxisAlignment:
              //                                       MainAxisAlignment
              //                                           .spaceBetween,
              //                                       children: [
              //                                         Text("lbl_08_15".tr,
              //                                             style: theme
              //                                                 .textTheme
              //                                                 .titleSmall),
              //                                         Container(
              //                                             height:
              //                                             10.adaptSize,
              //                                             width:
              //                                             10.adaptSize,
              //                                             margin: EdgeInsets
              //                                                 .symmetric(
              //                                                 vertical:
              //                                                 3.v),
              //                                             decoration: BoxDecoration(
              //                                                 color: theme
              //                                                  .colorScheme
              //                                                     .primary,
              //                                                 borderRadius:
              //                                                 BorderRadius
              //                                                     .circular(
              //                                                     5.h)))
              //                                       ])),
              //                               SizedBox(height: 62.v),
              //                               SizedBox(
              //                                   width: 84.h,
              //                                   child: Row(
              //                                       mainAxisAlignment:
              //                                       MainAxisAlignment
              //                                           .spaceBetween,
              //                                       children: [
              //                                         Text("lbl_09_15".tr,
              //                                             style: theme
              //                                                 .textTheme
              //                                                 .titleSmall),
              //                                         Container(
              //                                             height:
              //                                             10.adaptSize,
              //                                             width:
              //                                             10.adaptSize,
              //                                             margin: EdgeInsets
              //                                                 .symmetric(
              //                                                 vertical:
              //                                                 3.v),
              //                                             decoration: BoxDecoration(
              //                                                 color: theme
              //                                                     .colorScheme
              //                                                     .primary,
              //                                                 borderRadius:
              //                                                 BorderRadius
              //                                                     .circular(
              //                                                     5.h)))
              //                                       ])),
              //                               SizedBox(height: 63.v),
              //                               SizedBox(
              //                                   width: 84.h,
              //                                   child: Row(
              //                                       mainAxisAlignment:
              //                                       MainAxisAlignment
              //                                           .spaceBetween,
              //                                       children: [
              //                                         Text("lbl_09_30".tr,
              //                                             style: theme
              //                                                 .textTheme
              //                                                 .titleSmall),
              //                                         Container(
              //                                             height:
              //                                             10.adaptSize,
              //                                             width:
              //                                             10.adaptSize,
              //                                             margin: EdgeInsets
              //                                                 .symmetric(
              //                                                 vertical:
              //                                                 3.v),
              //                                             decoration: BoxDecoration(
              //                                                 color: theme
              //                                                     .colorScheme
              //                                                     .primary,
              //                                                 borderRadius:
              //                                                 BorderRadius
              //                                                     .circular(
              //                                                     5.h)))
              //                                       ])),
              //                               SizedBox(height: 63.v),
              //                               SizedBox(
              //                                   width: 84.h,
              //                                   child: Row(
              //                                       mainAxisAlignment:
              //                                       MainAxisAlignment
              //                                           .spaceBetween,
              //                                       children: [
              //                                         Text("lbl_10_30".tr,
              //                                             style: theme
              //                                                 .textTheme
              //                                                 .titleSmall),
              //                                         Container(
              //                                             height:
              //                                             10.adaptSize,
              //                                             width:
              //                                             10.adaptSize,
              //                                             margin: EdgeInsets
              //                                                 .symmetric(
              //                                                 vertical:
              //                                                 3.v),
              //                                             decoration: BoxDecoration(
              //                                                 color: theme
              //                                                     .colorScheme
              //                                                     .primary,
              //                                                 borderRadius:
              //                                                 BorderRadius
              //                                                     .circular(
              //                                                     5.h)))
              //                                       ])),
              //                               SizedBox(height: 63.v),
              //                               SizedBox(
              //                                   width: 84.h,
              //                                   child: Row(
              //                                       mainAxisAlignment:
              //                                       MainAxisAlignment
              //                                           .spaceBetween,
              //                                       children: [
              //                                         Text("lbl_11_30".tr,
              //                                             style: theme
              //                                                 .textTheme
              //                                                 .titleSmall),
              //                                         Container(
              //                                             height:
              //                                             10.adaptSize,
              //                                             width:
              //                                             10.adaptSize,
              //                                             margin: EdgeInsets
              //                                                 .symmetric(
              //                                                 vertical:
              //                                                 3.v),
              //                                             decoration: BoxDecoration(
              //                                                 color: theme
              //                                                     .colorScheme
              //                                                     .primary,
              //                                                 borderRadius:
              //                                                 BorderRadius
              //                                                     .circular(
              //                                                     5.h)))
              //                                       ]))
              //                             ])),
              //                     Align(
              //                         alignment: Alignment.topCenter,
              //                         child: Container(
              //                             width: 84.h,
              //                             margin: EdgeInsets.only(
              //                                 bottom: 480.v),
              //                             child: Row(
              //                                 mainAxisAlignment:
              //                                 MainAxisAlignment
              //                                     .spaceBetween,
              //                                 children: [
              //                                   Text("lbl_07_15".tr,
              //                                       style: theme.textTheme
              //                                           .titleSmall),
              //                                   Container(
              //                                       height: 10.adaptSize,
              //                                       width: 10.adaptSize,
              //                                       margin:
              //                                       EdgeInsets
              //                                           .symmetric(
              //                                           vertical:
              //                                           3.v),
              //                                       decoration: BoxDecoration(
              //                                           color: theme
              //                                               .colorScheme
              //                                               .primary,
              //                                           borderRadius:
              //                                           BorderRadius
              //                                               .circular(
              //                                               5.h)))
              //                                 ]))),
              //                     Align(
              //                         alignment: Alignment.bottomCenter,
              //                         child: Container(
              //                             width: 84.h,
              //                             margin:
              //                             EdgeInsets.only(top: 480.v),
              //                             child: Row(
              //                                 mainAxisAlignment:
              //                                 MainAxisAlignment
              //                                     .spaceBetween,
              //                                 children: [
              //                                   Text("lbl_12_30".tr,
              //                                       style: theme.textTheme
              //                                           .titleSmall),
              //                                   Container(
              //                                       height: 10.adaptSize,
              //                                       width: 10.adaptSize,
              //                                       margin:
              //                                       EdgeInsets
              //                                           .symmetric(
              //                                           vertical:
              //                                           3.v),
              //                                       decoration: BoxDecoration(
              //                                           color: theme
              //                                               .colorScheme
              //                                               .primary,
              //                                           borderRadius:
              //                                           BorderRadius
              //                                               .circular(
              //                                               5.h)))
              //                                 ])))
              //                   ])),
              //           Expanded(
              //               child: Padding(
              //                   padding: EdgeInsets.only(left: 28.h),
              //                   child: Column(children: [
              //                     TimeTableSell(),
              //                     SizedBox(height: 32.v),
              //                     TimeTableSell(text: "lbl_english".tr,subName:  "lbl_class_7th_a".tr,),
              //                     SizedBox(height: 32.v),
              //                     TimeTableSell(text: "lbl_social_science".tr,subName:  "lbl_class_7th_b".tr,),
              //                     SizedBox(height: 32.v),
              //                     TimeTableSell(text: "lbl_gujrati".tr,subName:  "lbl_class_6th_b".tr,),
              //                     SizedBox(height: 32.v),
              //                     TimeTableSell(text: "lbl_hindi".tr,subName:  "lbl_class_6th_a".tr,),
              //                     SizedBox(height: 32.v),
              //                     TimeTableSell(text: "lbl_science".tr,subName:  "lbl_class_6th_b".tr,),
              //                     SizedBox(height: 32.v),
              //                     TimeTableSell(text: "lbl_mathematics".tr,subName:  "lbl_class_7th_b".tr,),
              //
              //                   ])))
              //         ]))
            ])),
      ),
    );
  }
}
