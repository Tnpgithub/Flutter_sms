import 'package:carousel_slider/carousel_slider.dart';
import 'package:student_app/Services/upcoming_events_api.dart';
import 'package:student_app/presentation/home_page/widgets/upcoming_event_common.dart';
import 'package:student_app/presentation/home_page/models/upcoming_events.dart';

import '../../widgets/custom_search_view.dart';
import '../home_page/widgets/attendancecolum_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/attendancecolum_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:student_app/widgets/app_bar/appbar_image_1.dart';
import 'package:student_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:student_app/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'models/upcomin_event_model.dart';

// ignore_for_file: must_be_immutable
//class HomePage extends StatelessWidget {
class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  String sid = 'xxxxxx';

  late String student_name = 'blank';
  late String reg_no = 'blank';
  late String photo = 'blank';

  List<UpcomingEvents> events = [];

  @override
  void initState() {
    loadData();
    super.initState();
    fetchEvents();
  }

  void loadData() async {
    final SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      reg_no = spref.getString('reg_no') ?? 'blank';
      student_name = spref.getString('student_name') ?? 'blank';
      photo = spref.getString('photo') ?? 'blank';
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          height: 82.v,
          title: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppbarSubtitle4(
                      text: reg_no,
                      //text: "lbl_id_s8745".tr,
                      // margin: EdgeInsets.only(right: 85.h)
                    ),
                    SizedBox(height: 8.v),
                    AppbarSubtitle(text: student_name)
                    //AppbarSubtitle(text: "msg_hello_albert_r".tr)
                  ])),
          actions: [
            AppbarImage1(
                svgPath: ImageConstant.imgNotification,
                margin: EdgeInsets.fromLTRB(20.h, 15.v, 4.h, 12.v),
                onTap: () {
                  onTapNotification();
                }),
            AppbarCircleimage(
                onTap: () {
                  // bottomBarController.selectedIndex.value=3;
                  // bottomBarController.onChange(ProfilePage());
                },
                imagePath: ImageConstant.imgEllipse26,
                margin: EdgeInsets.only(left: 16.h, top: 3.v, right: 24.h))
          ]),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10.h,
        ),
        CustomSearchView(
          textInputAction: TextInputAction.done,
          autofocus: false,
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
          controller: controller.searchController,
          hintText: "Search anything...".tr,
          hintStyle: TextStyle(
            color: Color(0xFF696969),
            fontSize: 16.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 13.h, 15.v),
              child: CustomImageView(svgPath: ImageConstant.imgSearch)),
          prefixConstraints: BoxConstraints(maxHeight: 54.v),
          // suffix: Padding(
          //     padding: EdgeInsets.only(right: 15.h),
          //     child: IconButton(
          //         onPressed: () {
          //           controller.searchController
          //               .clear();
          //         },
          //         icon: Icon(Icons.clear,
          //             color: Colors.grey.shade600)))
        ),
        SizedBox(height: 24.v),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            // shrinkWrap: true,
            children: [
              Container(
//                 child: CarouselSlider.builder(
//                   itemCount: 3,
//
//                   itemBuilder: (context, index, realIndex) {
//                     return Padding(
//                       padding: EdgeInsets.only(left: 8,right: 8),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: Container(
//                           // width: getVerticalSize(308),
//                           height: 150.h,
// width: 388.h,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8.h),
//                               image: DecorationImage(
//                                   fit: BoxFit.fill,
//                                   image: AssetImage(ImageConstant.banner))),
//                           child: Padding(
//                             padding: EdgeInsets.only(left: 31, right: 31),
//                             child: Column(
//                               crossAxisAlignment:
//                               CrossAxisAlignment.start,
//                               mainAxisAlignment:
//                               MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(height: 20.h,),
//                                 Expanded(
//                                   child: Text(
//                                       "msg_check_updated_home"
//                                           .tr,
//
//                                       style: CustomTextStyles
//                                           .titleMediumOpenSans
//                                   ),
//                                 ),
//                                 CustomElevatedButton(
//                                     height: 34.v,
//                                     width: 105.h,
//                                     text: "lbl_check_now".tr,
//                                     buttonStyle:
//                                     CustomButtonStyles
//                                         .fillBlueGray,
//                                     buttonTextStyle:
//                                     CustomTextStyles
//                                         .titleSmallWhiteA700).marginSymmetric(vertical: 20.h)
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                   options: CarouselOptions(
//                     height: 150.0,
//                     enlargeCenterPage: true,
//                     autoPlay: true,
//                     enableInfiniteScroll: true,
//                     aspectRatio: 1,
//                     viewportFraction: 1,
//                     onPageChanged: (index, reason) {
//                       controller.select.value = index;
//                       controller.update();
//                     },
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     enlargeFactor: 0.55,
//                     autoPlayAnimationDuration: const Duration(milliseconds: 500),
//                   ),
//                 ),
                  ),

              Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 90.v,
                          crossAxisCount: 4,
                          mainAxisSpacing: 20.h,
                          crossAxisSpacing: 20.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: attendanceData.length,
                      itemBuilder: (context, index) {
                        print("lenght======${attendanceData.length}");
                        // AttendancecolumItemModel model = controller
                        //     .homeModelObj
                        //     .value
                        //     .attendancecolumItemList
                        //     .value[index];
                        return AttendancecolumItemWidget(
                          image: attendanceData[index].image!,
                          color: attendanceData[index].color!,
                          text: attendanceData[index].attendanceText!,
                          onTapAttendancecolum: attendanceData[index].onTab!,
                        );
                      })),
              // SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h, top: 24.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_upcoming_events".tr,
                          style: CustomTextStyles.titleLarge22),
                      GestureDetector(
                          onTap: () {
                            onTapTxtViewall();
                          },
                          child: Text("lbl_view_all".tr,
                              style: CustomTextStyles.titleSmallGray700))
                    ]),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 205.v,
                // color: Colors.red,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: events.length,
                  scrollDirection: Axis.horizontal,
                  // padding:
                  // EdgeInsets.only(, top: 17.v,),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 16.v,
                  ),
                  itemBuilder: (context, index) {
                    return UpcomingEventCommon(
                      name: events[index].name,
                      date_formatted: events[index].date_formatted,
                      photo_url: events[index].photo_url,
                    );
                  },
                ),
              ).marginOnly(bottom: 24.h),
            ],
          ),
        ),
        // SizedBox(
        //   height: 24.h,
        // )
      ]),
      // body: Padding(
      //   padding: EdgeInsets.only(
      //       left: 20.h, right: 20.h, bottom: 5.v,),
      //   child: Column(
      //     children: [
      //       CustomSearchView(
      //           autofocus: false,
      //           controller: controller.searchController,
      //           hintText: "msg_search_anything".tr,
      //           prefix: Container(
      //               margin: EdgeInsets.fromLTRB(
      //                   16.h, 15.v, 13.h, 15.v),
      //               child: CustomImageView(
      //                   svgPath: ImageConstant.imgSearch)),
      //           prefixConstraints:
      //           BoxConstraints(maxHeight: 54.v),
      //           // suffix: Padding(
      //           //     padding: EdgeInsets.only(right: 15.h),
      //           //     child: IconButton(
      //           //         onPressed: () {
      //           //           controller.searchController.clear();
      //           //         },
      //           //         icon: Icon(Icons.clear,
      //           //             color: Colors.grey.shade600)))
      //       ),
      //       SingleChildScrollView(
      //         // padding: EdgeInsets.only(top: 24.v),
      //         child: Column(children: [
      //
      //           SizedBox(height: 24.v),
      //           Card(
      //               clipBehavior: Clip.antiAlias,
      //               elevation: 0,
      //               color: appTheme.pink50,
      //               shape: RoundedRectangleBorder(
      //                   borderRadius:
      //                   BorderRadiusStyle.roundedBorder8),
      //               child: Container(
      //                   height: 150.v,
      //                   width: 388.h,
      //                   decoration: AppDecoration.fillPink.copyWith(
      //                       borderRadius:
      //                       BorderRadiusStyle.roundedBorder8),
      //                   child: Stack(
      //                       alignment: Alignment.centerRight,
      //                       children: [
      //                         CustomImageView(
      //                             imagePath:
      //                             ImageConstant.imgVectorRed100,
      //                             height: 148.v,
      //                             width: 200.h,
      //                             alignment: Alignment.centerRight),
      //                         Align(
      //                             alignment: Alignment.centerRight,
      //                             child: SizedBox(
      //                                 height: 150.v,
      //                                 width: 220.h,
      //                                 child: Stack(
      //                                     alignment:
      //                                     Alignment.topRight,
      //                                     children: [
      //                                       CustomImageView(
      //                                           imagePath: ImageConstant
      //                                               .imgFrontviewyoun,
      //                                           height: 150.v,
      //                                           width: 220.h,
      //                                           radius: BorderRadius
      //                                               .circular(8.h),
      //                                           alignment:
      //                                           Alignment.center),
      //                                       Align(
      //                                           alignment: Alignment
      //                                               .topRight,
      //                                           child: Padding(
      //                                               padding: EdgeInsets
      //                                                   .only(
      //                                                   left:
      //                                                   55.h,
      //                                                   top: 8.v,
      //                                                   bottom:
      //                                                   72.v),
      //                                               child: Row(
      //                                                   mainAxisAlignment:
      //                                                   MainAxisAlignment
      //                                                       .spaceBetween,
      //                                                   crossAxisAlignment:
      //                                                   CrossAxisAlignment
      //                                                       .start,
      //                                                   children: [
      //                                                     Opacity(
      //                                                         opacity:
      //                                                         0.2,
      //                                                         child: CustomImageView(
      //                                                             svgPath:
      //                                                             ImageConstant.imgLightbulb,
      //                                                             height: 43.v,
      //                                                             width: 46.h,
      //                                                             margin: EdgeInsets.only(bottom: 26.v))),
      //                                                     Opacity(
      //                                                         opacity:
      //                                                         0.24,
      //                                                         child: CustomImageView(
      //                                                             svgPath:
      //                                                             ImageConstant.imgReplyGray80001,
      //                                                             height: 30.v,
      //                                                             width: 18.h,
      //                                                             radius: BorderRadius.circular(8.h),
      //                                                             margin: EdgeInsets.only(top: 38.v)))
      //                                                   ])))
      //                                     ]))),
      //                         CustomImageView(
      //                             svgPath:
      //                             ImageConstant.imgGroupGray400,
      //                             height: 101.v,
      //                             width: 133.h,
      //                             radius: BorderRadius.circular(8.h),
      //                             alignment: Alignment.topLeft),
      //                         Align(
      //                             alignment: Alignment.centerLeft,
      //                             child: Padding(
      //                                 padding:
      //                                 EdgeInsets.only(left: 24.h),
      //                                 child: Column(
      //                                     mainAxisSize:
      //                                     MainAxisSize.min,
      //                                     crossAxisAlignment:
      //                                     CrossAxisAlignment
      //                                         .start,
      //                                     children: [
      //                                       SizedBox(
      //                                           width: 186.h,
      //                                           child: Text(
      //                                               "msg_check_updated_home"
      //                                                   .tr,
      //                                               maxLines: 2,
      //                                               overflow:
      //                                               TextOverflow
      //                                                   .ellipsis,
      //                                               style: CustomTextStyles
      //                                                   .titleMediumOpenSans
      //                                                   .copyWith(
      //                                                   height:
      //                                                   1.67))),
      //                                       SizedBox(height: 10.v),
      //                                       CustomElevatedButton(
      //                                           height: 34.v,
      //                                           width: 105.h,
      //                                           text: "lbl_check_now"
      //                                               .tr,
      //                                           buttonStyle:
      //                                           CustomButtonStyles
      //                                               .fillBlueGray,
      //                                           buttonTextStyle:
      //                                           CustomTextStyles
      //                                               .titleSmallWhiteA700)
      //                                     ])))
      //                       ]))),
      //           SizedBox(height: 24.v),
      //           Obx(() => GridView.builder(
      //               shrinkWrap: true,
      //               gridDelegate:
      //               SliverGridDelegateWithFixedCrossAxisCount(
      //                   mainAxisExtent: 90.v,
      //                   crossAxisCount: 4,
      //                   mainAxisSpacing: 20.h,
      //                   crossAxisSpacing: 20.h),
      //               physics: NeverScrollableScrollPhysics(),
      //               itemCount: controller.homeModelObj.value
      //                   .attendancecolumItemList.value.length,
      //               itemBuilder: (context, index) {
      //                 AttendancecolumItemModel model = controller
      //                     .homeModelObj
      //                     .value
      //                     .attendancecolumItemList
      //                     .value[index];
      //                 return AttendancecolumItemWidget(model,
      //                     onTapAttendancecolum: () {
      //                       onTapAttendancecolum();
      //                     });
      //               })),
      //           SizedBox(height: 30.v),
      //           Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text("lbl_upcoming_events".tr,
      //                     style: CustomTextStyles.titleLarge22),
      //                 GestureDetector(
      //                     onTap: () {
      //                       onTapTxtViewall();
      //                     },
      //                     child: Padding(
      //                         padding: EdgeInsets.only(
      //                             top: 2.v, bottom: 7.v),
      //                         child: Text("lbl_view_all".tr,
      //                             style: CustomTextStyles
      //                                 .titleSmallGray700)))
      //               ]),
      //           SizedBox(height: 17.v),
      //           Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Expanded(
      //                     child: Container(
      //                         margin: EdgeInsets.only(right: 10.h),
      //                         padding: EdgeInsets.all(8.h),
      //                         decoration: AppDecoration.fillGray
      //                             .copyWith(
      //                             borderRadius: BorderRadiusStyle
      //                                 .roundedBorder8),
      //                         child: Column(
      //                             mainAxisSize: MainAxisSize.min,
      //                             crossAxisAlignment:
      //                             CrossAxisAlignment.start,
      //                             mainAxisAlignment:
      //                             MainAxisAlignment.center,
      //                             children: [
      //                               CustomImageView(
      //                                   imagePath: ImageConstant
      //                                       .imgRectangle728,
      //                                   height: 127.v,
      //                                   width: 168.h,
      //                                   radius: BorderRadius.circular(
      //                                       8.h)),
      //                               SizedBox(height: 11.v),
      //                               Text("lbl_sports_day".tr,
      //                                   style: theme
      //                                       .textTheme.titleMedium),
      //                               SizedBox(height: 9.v),
      //                               Row(children: [
      //                                 CustomImageView(
      //                                     svgPath: ImageConstant
      //                                         .imgCalendar,
      //                                     height: 18.adaptSize,
      //                                     width: 18.adaptSize),
      //                                 Padding(
      //                                     padding: EdgeInsets.only(
      //                                         left: 8.h),
      //                                     child: Text(
      //                                         "lbl_10_sep_2023".tr,
      //                                         style: theme.textTheme
      //                                             .bodyMedium))
      //                               ]),
      //                               SizedBox(height: 2.v)
      //                             ]))),
      //                 Expanded(
      //                     child: Container(
      //                         margin: EdgeInsets.only(left: 10.h),
      //                         padding: EdgeInsets.all(8.h),
      //                         decoration: AppDecoration.fillGray
      //                             .copyWith(
      //                             borderRadius: BorderRadiusStyle
      //                                 .roundedBorder8),
      //                         child: Column(
      //                             mainAxisSize: MainAxisSize.min,
      //                             crossAxisAlignment:
      //                             CrossAxisAlignment.start,
      //                             mainAxisAlignment:
      //                             MainAxisAlignment.center,
      //                             children: [
      //                               CustomImageView(
      //                                   imagePath: ImageConstant
      //                                       .imgRectangle728127x168,
      //                                   height: 127.v,
      //                                   width: 168.h,
      //                                   radius: BorderRadius.circular(
      //                                       8.h)),
      //                               SizedBox(height: 11.v),
      //                               Text("lbl_annual_day".tr,
      //                                   style: theme
      //                                       .textTheme.titleMedium),
      //                               SizedBox(height: 9.v),
      //                               Row(children: [
      //                                 CustomImageView(
      //                                     svgPath: ImageConstant
      //                                         .imgCalendar,
      //                                     height: 18.adaptSize,
      //                                     width: 18.adaptSize),
      //                                 Padding(
      //                                     padding: EdgeInsets.only(
      //                                         left: 8.h),
      //                                     child: Text(
      //                                         "lbl_28_sep_2023".tr,
      //                                         style: theme.textTheme
      //                                             .bodyMedium))
      //                               ]),
      //                               SizedBox(height: 2.v)
      //                             ])))
      //               ])
      //         ]),
      //       ),
      //     ],
      //   ),
      // )
    );
  }

  /// Navigates to the homeWorkScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeWorkScreen.
  onTapAttendancecolum() {
    Get.toNamed(AppRoutes.homeWorkScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationsScreen.
  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the upcomingEventsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the upcomingEventsScreen.
  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.upcomingEventsScreen,
    );
  }

  Future<String> getString(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(key) ?? "";
  }

  Future<void> fetchEvents() async {
    final response = await NoticeApi.fetchNotices('Event', 2, 0);

    setState(() {
      events = response;
    });
  }
}
