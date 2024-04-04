import 'package:student_app/widgets/insulin_chart.dart';

import '../exam_result_page/widgets/examprogressbar_item_widget.dart';
import '../exam_result_page/widgets/subjectslist_item_widget.dart';
import 'controller/exam_result_controller.dart';
import 'models/exam_result_model.dart';
import 'models/examprogressbar_item_model.dart';
import 'models/subjectslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ExamResultPage extends StatelessWidget {
  ExamResultPage({Key? key}) : super(key: key);

  ExamResultController controller =
      Get.put(ExamResultController(ExamResultModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InsulinChart(),
            SizedBox(
              height: 25.h,
            ),
            // Padding(
            //     padding: EdgeInsets.only(left: 13.h),
            //     child: Row(children: [
            //       Column(
            //           crossAxisAlignment:
            //           CrossAxisAlignment.end,
            //           children: [
            //             Text("lbl_200".tr,
            //                 style: theme
            //                     .textTheme.labelSmall),
            //             SizedBox(height: 14.v),
            //             Text("lbl_175".tr,
            //                 style: theme
            //                     .textTheme.labelSmall),
            //             SizedBox(height: 18.v),
            //             Text("lbl_150".tr,
            //                 style: theme
            //                     .textTheme.labelSmall),
            //             SizedBox(height: 16.v),
            //             Text("lbl_125".tr,
            //                 style: theme
            //                     .textTheme.labelSmall),
            //             SizedBox(height: 17.v),
            //             Text("lbl_100".tr,
            //                 style: theme
            //                     .textTheme.labelSmall),
            //             Padding(
            //                 padding: EdgeInsets.only(
            //                     top: 17.v, right: 1.h),
            //                 child: Text("lbl_75".tr,
            //                     style: theme.textTheme
            //                         .labelSmall)),
            //             SizedBox(height: 16.v),
            //             Text("lbl_50".tr,
            //                 style: theme
            //                     .textTheme.labelSmall),
            //             Padding(
            //                 padding: EdgeInsets.only(
            //                     top: 18.v, right: 1.h),
            //                 child: Text("lbl_25".tr,
            //                     style: theme.textTheme
            //                         .labelSmall)),
            //             Padding(
            //                 padding: EdgeInsets.only(
            //                     top: 20.v, right: 2.h),
            //                 child: Text("lbl_0".tr,
            //                     style: theme.textTheme
            //                         .labelSmall))
            //           ]),
            //       Container(
            //           height: 227.v,
            //           width: 351.h,
            //           margin: EdgeInsets.only(
            //               left: 7.h, top: 11.v),
            //           decoration:
            //           AppDecoration.outlineGray,
            //           child: Stack(
            //               alignment: Alignment.center,
            //               children: [
            //                 Align(
            //                     alignment:
            //                     Alignment.center,
            //                     child: Column(
            //                         mainAxisSize:
            //                         MainAxisSize
            //                             .min,
            //                         children: [
            //                           Divider(),
            //                           SizedBox(
            //                               height: 27.v),
            //                           Divider(),
            //                           SizedBox(
            //                               height: 28.v),
            //                           Divider(),
            //                           SizedBox(
            //                               height: 28.v),
            //                           Divider(),
            //                           SizedBox(
            //                               height: 27.v),
            //                           Divider(),
            //                           SizedBox(
            //                               height: 28.v),
            //                           Divider(),
            //                           SizedBox(
            //                               height: 26.v),
            //                           Divider()
            //                         ])),
            //                 Align(
            //                     alignment:
            //                     Alignment.center,
            //                     child: Row(
            //                         mainAxisAlignment:
            //                         MainAxisAlignment
            //                             .center,
            //                         crossAxisAlignment:
            //                         CrossAxisAlignment
            //                             .end,
            //                         children: [
            //                           Container(
            //                               height: 84.v,
            //                               width: 15.h,
            //                               margin: EdgeInsets
            //                                   .only(
            //                                   top: 143
            //                                       .v),
            //                               decoration: BoxDecoration(
            //                                   color: theme
            //                                       .colorScheme
            //                                       .errorContainer)),
            //                           Padding(
            //                               padding: EdgeInsets
            //                                   .only(
            //                                   left: 20
            //                                       .h),
            //                               child: SizedBox(
            //                                   height:
            //                                   227.v,
            //                                   child: VerticalDivider(
            //                                       width: 1
            //                                           .h,
            //                                       thickness:
            //                                       1.v))),
            //                           Container(
            //                               height: 142.v,
            //                               width: 16.h,
            //                               margin: EdgeInsets.only(
            //                                   left:
            //                                   23.h,
            //                                   top:
            //                                   85.v),
            //                               decoration:
            //                               BoxDecoration(
            //                                   color:
            //                                   appTheme.deepOrangeA200)),
            //                           Padding(
            //                               padding: EdgeInsets
            //                                   .only(
            //                                   left: 18
            //                                       .h),
            //                               child: SizedBox(
            //                                   height:
            //                                   227.v,
            //                                   child: VerticalDivider(
            //                                       width: 1
            //                                           .h,
            //                                       thickness:
            //                                       1.v))),
            //                           Container(
            //                               height: 199.v,
            //                               width: 14.h,
            //                               margin: EdgeInsets.only(
            //                                   left:
            //                                   22.h,
            //                                   top:
            //                                   28.v),
            //                               decoration: BoxDecoration(
            //                                   color: theme
            //                                       .colorScheme
            //                                       .onError)),
            //                           Padding(
            //                               padding: EdgeInsets
            //                                   .only(
            //                                   left: 21
            //                                       .h),
            //                               child: SizedBox(
            //                                   height:
            //                                   227.v,
            //                                   child: VerticalDivider(
            //                                       width: 1
            //                                           .h,
            //                                       thickness:
            //                                       1.v))),
            //                           Container(
            //                               height: 85.v,
            //                               width: 15.h,
            //                               margin: EdgeInsets.only(
            //                                   left:
            //                                   20.h,
            //                                   top: 142
            //                                       .v),
            //                               decoration:
            //                               BoxDecoration(
            //                                   color:
            //                                   appTheme.amber300)),
            //                           Padding(
            //                               padding: EdgeInsets
            //                                   .only(
            //                                   left: 23
            //                                       .h),
            //                               child: SizedBox(
            //                                   height:
            //                                   227.v,
            //                                   child: VerticalDivider(
            //                                       width: 1
            //                                           .h,
            //                                       thickness:
            //                                       1.v))),
            //                           Container(
            //                               height: 142.v,
            //                               width: 15.h,
            //                               margin: EdgeInsets.only(
            //                                   left:
            //                                   23.h,
            //                                   top:
            //                                   85.v),
            //                               decoration:
            //                               BoxDecoration(
            //                                   color:
            //                                   appTheme.lightGreen400)),
            //                           Padding(
            //                               padding: EdgeInsets
            //                                   .only(
            //                                   left: 20
            //                                       .h),
            //                               child: SizedBox(
            //                                   height:
            //                                   227.v,
            //                                   child: VerticalDivider(
            //                                       width: 1
            //                                           .h,
            //                                       thickness:
            //                                       1.v))),
            //                           Container(
            //                               height: 171.v,
            //                               width: 16.h,
            //                               margin: EdgeInsets.only(
            //                                   left:
            //                                   21.h,
            //                                   top:
            //                                   56.v),
            //                               decoration:
            //                               BoxDecoration(
            //                                   color:
            //                                   appTheme.blue60001))
            //                         ]))
            //               ]))
            //     ])),
            // Align(
            //     alignment: Alignment.centerRight,
            //     child: Padding(
            //         padding: EdgeInsets.only(
            //             left: 61.h,
            //             top: 6.v,
            //             right: 18.h),
            //         child: Row(
            //             mainAxisAlignment:
            //             MainAxisAlignment.end,
            //             children: [
            //               Text("lbl_sci".tr,
            //                   style: CustomTextStyles
            //                       .labelSmallGray800),
            //               Padding(
            //                   padding: EdgeInsets.only(
            //                       left: 41.h),
            //                   child: Text(
            //                       "lbl_maths".tr,
            //                       style: CustomTextStyles
            //                           .labelSmallGray800)),
            //               Padding(
            //                   padding: EdgeInsets.only(
            //                       left: 36.h),
            //                   child: Text("lbl_s_s".tr,
            //                       style: CustomTextStyles
            //                           .labelSmallGray800)),
            //               Padding(
            //                   padding: EdgeInsets.only(
            //                       left: 35.h),
            //                   child: Text(
            //                       "lbl_english".tr,
            //                       style: CustomTextStyles
            //                           .labelSmallGray800)),
            //               Padding(
            //                   padding: EdgeInsets.only(
            //                       left: 34.h),
            //                   child: Text(
            //                       "lbl_gujrati".tr,
            //                       style: CustomTextStyles
            //                           .labelSmallGray800)),
            //               Padding(
            //                   padding: EdgeInsets.only(
            //                       left: 34.h),
            //                   child: Text(
            //                       "lbl_hindi".tr,
            //                       style: CustomTextStyles
            //                           .labelSmallGray800))
            //             ]))),
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 40.v,
                    // color: Colors.grey,
                    child: ListView.separated(
                        padding:
                            EdgeInsets.only(left: 31.h, top: 0.v, right: 39.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 56.h);
                        },
                        itemCount: colorList.length,
                        itemBuilder: (context, index) {
                          return SubjectslistItemWidget(
                            color: colorList[index].color,
                            text: colorList[index].text,
                            secondColor: colorList[index].secondColor,
                            secondText: colorList[index].secondText,
                          );
                        }))),
            // SizedBox(height: 10.h ,),
            Align(
                alignment: Alignment.center,
                child: Container(
                    // color: Colors.red,
                    height: 40.v,
                    child: ListView.separated(
                        padding:
                            EdgeInsets.only(left: 31.h, top: 0.v, right: 39.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 56.h);
                        },
                        itemCount: colorListSecond.length,
                        itemBuilder: (context, index) {
                          return SubjectslistItemWidget(
                            color: colorListSecond[index].color,
                            text: colorListSecond[index].text,
                            secondColor: colorListSecond[index].secondColor,
                            secondText: colorListSecond[index].secondText,
                          );
                        }))),
            SizedBox(height: 33.v),
            Text("lbl_overall_results".tr,
                style: CustomTextStyles.titleLarge22),
            SizedBox(height: 19.v),
            Obx(() => ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: controller.examResultModelObj.value
                    .examprogressbarItemList.value.length,
                itemBuilder: (context, index) {
                  ExamprogressbarItemModel model = controller
                      .examResultModelObj
                      .value
                      .examprogressbarItemList
                      .value[index];
                  return ExamprogressbarItemWidget(model,
                      onTapExamprogressbar: () {
                    onTapExamprogressbar();
                  });
                }).marginOnly(bottom: 24.h)),
          ]),
        ),
      ],
    );
  }

  /// Navigates to the firstTermExamScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the firstTermExamScreen.
  onTapExamprogressbar() {
    Get.toNamed(
      AppRoutes.firstTermExamScreen,
    );
  }
}
