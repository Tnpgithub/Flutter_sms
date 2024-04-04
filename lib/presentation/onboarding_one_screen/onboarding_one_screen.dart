import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        PrefUtils.closeApp();
        return true;
      },
      child: Scaffold(body: GetBuilder<OnboardingOneController>(
        builder: (controller) {
          return Stack(children: [
            PageView.builder(
              onPageChanged: (value) {
                controller.onChange(value);
              },
              scrollDirection: Axis.horizontal,
              controller: controller.pageController,
              itemCount: controller.image.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CustomAppBar(appBarColor: controller.appBarColors[index],height: 0.h,actions: [
                      //   Text("")
                      // ],),
                      CustomImageView(
                        imagePath: controller.image[index],
                        height: 550.adaptSize,
                        width: double.infinity.adaptSize,
                        alignment: Alignment.bottomRight,
                      ),

                      SizedBox(
                        height: 60.h,
                      ),
                      Center(
                        child: Text(
                          controller.text[index],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium!.copyWith(
                              height: 1.50,
                              fontFamily: "SF Pro Display",
                              fontSize: 28.fSize,
                              fontWeight: FontWeight.w700),
                        ).paddingSymmetric(horizontal: 40.h),
                      ),
                      SizedBox(
                        height: 16.v,
                      ),
                      Text(
                        "msg_excepteur_sint_occaecat".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumNunitoSansBlack900
                            .copyWith(
                                height: 1.71,
                                color: Colors.black,
                                fontSize: 14.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w400),
                      ).paddingSymmetric(horizontal: 28.h),

                      // fit: BoxFit.cover,
                      // margin: EdgeInsets.only(right: 57.h, bottom: 68.v))
                      // Align(
                      //   alignment: Alignment.topRight,
                      //   child: TextCommon(
                      //     text: (controller.pageIndex < (controller.text.length - 1)) ? Strings.skip : Strings
                      //         .skipp,
                      //     fontSize: 16.sp,
                      //   ),
                      // ),
                      // SizedBox(height: 25.h,),
                      // Container(
                      //   width: 323,
                      //   height: 323,
                      //   decoration: BoxDecoration(
                      //     color: colors[index],
                      //     shape: BoxShape.circle,
                      //   ),
                      //   child: Stack(
                      //     // alignment: Alignment.bottomCenter,
                      //     children: [
                      //       Padding(
                      //         padding: EdgeInsets.only(bottom: 50.h),
                      //         child: Image.asset(image[index], width: 360,
                      //           height: 360,
                      //           fit: BoxFit.cover,),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(height: 48.h,),
                      // TextCommon(
                      //   textAlign: TextAlign.center,
                      //   text: text[index],
                      //   fontSize: 25.sp,
                      //   fontWeight: FontWeight.w700,
                      //   // fontHeight: 42.h
                      // ),
                      // SizedBox(height: 16.h,),
                      // Expanded(
                      //   child: TextCommon(
                      //     textAlign: TextAlign.center,
                      //     text: secondText[index],
                      //     fontSize: 16.sp,
                      //     fontHeight: 1.3.h,
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(
                  AppRoutes.loginScreen,
                );
                PrefUtils.setIntro(false);
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                        (controller.sliderIndex < (controller.text.length - 1))
                            ? "Skip"
                            : "".tr,
                        style: theme.textTheme.bodyLarge)
                    .marginOnly(bottom: 30.h),
              ).paddingSymmetric(horizontal: 30.v, vertical: 65.v),
            ),
            // SizedBox(height: 40.h,),]
            //  Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: List.generate(3, (index) {
            //       return AnimatedContainer(
            //         margin:
            //         EdgeInsets.only(left: 4.h, right: 4.h),
            //         duration: const Duration(milliseconds: 300),
            //         height: 24.v,
            //         width: 8.h,
            //         decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: (index == controller.onChange(index))
            //                 ? appTheme.deepPurple50
            //                 : appTheme.gray50),
            //       );
            //     })),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(controller.text.length, (index) {
                    return AnimatedContainer(
                      margin: EdgeInsets.only(left: 4.h, right: 4.h),
                      duration: const Duration(milliseconds: 300),
                      height: 8.v,
                      width:(index == controller.sliderIndex)?24.h:8.v,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.h),
                          // shape: BoxShape.circle,
                          color: (index == controller.sliderIndex)
                              ? theme.colorScheme.primary
                              : Color(0xFF7E7CF0).withOpacity(0.23)),
                    );
                  })),
            ).marginOnly(bottom: 40.h),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: DotsIndicator(
            //     dotsCount: 3,
            //     // mainAxisSize: MainAxisSize.max,
            //     position: controller.sliderIndex,
            //     // reversed: true,
            //     decorator: DotsDecorator(
            //       color: Color(0xFF7E7CF0).withOpacity(0.23),
            //       // color: AppTheme.getDividerColor(context),
            //       // activeColor:AppTheme.primaryColor(context),
            //       activeColor: theme.colorScheme.primary,
            //       activeSize: Size(24.h, 8.h),
            //       // size: Size(8.adaptSize,8.adaptSize),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20.0)),
            //       activeShape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20)),
            //     ),
            //   ),
            // ).marginOnly(bottom: 40.h),
            //
            // SizedBox(
            //   height: 40.h,
            // ),
            // Padding(
            // padding: EdgeInsets.symmetric(horizontal: 20.h),
            // child: AppButton(
            // onTab: () {
            // if((pageIndex<(text.length-1))){
            // pageIndex=pageIndex+1;
            //
            // pageController.jumpToPage(pageIndex);
            // }else{
            //
            // CommonMethod.sendToNextScreen(context, RoutesPath.countryScreen);
            // }
            // },
            // text:(pageIndex<(text.length-1))? Strings.next:Strings.getStarted,
            // ),
            // ),
            // SizedBox(height: 48.h,),
            // SizedBox(
            //     height: 472.v,
            //     width: double.maxFinite,
            //     child:
            //     Stack(alignment: Alignment.bottomCenter, children: [
            //       Align(
            //           alignment: Alignment.topCenter,
            //           child: Container(
            //               padding: EdgeInsets.symmetric(
            //                   horizontal: 20.h, vertical: 23.v),
            //               decoration: BoxDecoration(
            //                   image: DecorationImage(
            //                       image: fs.Svg(ImageConstant.imgGroup3),
            //                       fit: BoxFit.cover)),
            //               child: Column(
            //                   mainAxisSize: MainAxisSize.min,
            //                   crossAxisAlignment: CrossAxisAlignment.end,
            //                   children: [
            //                     GestureDetector(
            //                         onTap: () {
            //                           onTapTxtSkip();
            //                         },
            //                         child: Text("lbl_skip".tr,
            //                             style:
            //                             theme.textTheme.bodyLarge)),
            //                     Opacity(
            //                         opacity: 0.2,
            //                         child: CustomImageView(
            //                             svgPath: ImageConstant.imgVector,
            //                             height: 127.v,
            //                             width: 128.h,
            //                             margin: EdgeInsets.only(
            //                                 top: 4.v, right: 36.h))),
            //                     CustomImageView(
            //                         imagePath: ImageConstant.imgEllipse24,
            //                         height: 69.adaptSize,
            //                         width: 69.adaptSize,
            //                         radius: BorderRadius.circular(34.h),
            //                         alignment: Alignment.centerLeft,
            //                         margin: EdgeInsets.only(
            //                             left: 13.h,
            //                             top: 97.v,
            //                             bottom: 84.v))
            //                   ]))),
            //       CustomImageView(
            //           svgPath: ImageConstant.imgIphone14pro,
            //           height: 319.v,
            //           width: 179.h),
            //       CustomImageView(
            //           svgPath: ImageConstant.imgGroupWhiteA700,
            //           height: 53.v,
            //           width: 148.h,
            //           alignment: Alignment.topLeft,
            //           margin: EdgeInsets.only(left: 28.h, top: 39.v)),
            //       Opacity(
            //           opacity: 0.2,
            //           child: CustomImageView(
            //               svgPath: ImageConstant.imgReply,
            //               height: 98.v,
            //               width: 99.h,
            //               alignment: Alignment.topLeft,
            //               margin:
            //               EdgeInsets.only(left: 34.h, top: 120.v))),
            //       CustomImageView(
            //           svgPath: ImageConstant.imgFrame,
            //           height: 45.adaptSize,
            //           width: 45.adaptSize,
            //           alignment: Alignment.bottomRight,
            //           margin: EdgeInsets.only(right: 57.h, bottom: 68.v))
            // //     ])),
            // Padding(
            //     padding:
            //     EdgeInsets.only(left: 43.h, top: 69.v, right: 43.h),
            //     child: Obx(() => CarouselSlider.builder(
            //         options: CarouselOptions(
            //             height: 143.v,
            //             initialPage: 0,
            //             autoPlay: true,
            //             viewportFraction: 1.0,
            //             enableInfiniteScroll: false,
            //             scrollDirection: Axis.horizontal,
            //             onPageChanged: (index, reason) {
            //               controller.sliderIndex.value = index;
            //             }),
            //         itemCount: controller.onboardingOneModelObj.value
            //             .slidercheckstudItemList.value.length,
            //         itemBuilder: (context, index, realIndex) {
            //           SlidercheckstudItemModel model = controller
            //               .onboardingOneModelObj
            //               .value
            //               .slidercheckstudItemList
            //               .value[index];
            //           return SlidercheckstudItemWidget(model);
            //         }))),
            // SizedBox(height: 40.v),
            // Obx(() => SizedBox(
            //     height: 8.v,
            //     child: AnimatedSmoothIndicator(
            //         activeIndex: controller.sliderIndex.value,
            //         count: controller.onboardingOneModelObj.value
            //             .slidercheckstudItemList.value.length,
            //         axisDirection: Axis.horizontal,
            //         effect: ScrollingDotsEffect(
            //             spacing: 6,
            //             // activeDotColor: Colors.red,
            //             activeDotColor: theme.colorScheme.primary,
            //             dotColor:
            //             theme.colorScheme.primary.withOpacity(0.44),
            //             dotHeight: 8.v,
            //             dotWidth: 8.h)))),
            // SizedBox(height: 5.v)
          ]);
        },
      ),
          bottomNavigationBar: GetBuilder<OnboardingOneController>(
        builder: (controller) {
          return CustomElevatedButton(
              text: controller.sliderIndex == 2
                  ? "lbl_get_started".tr
                  : "lbl_next".tr,
              margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 45.v),
              onTap: () {
                if ((controller.sliderIndex < (controller.text.length - 1))) {
                  controller.sliderIndex = controller.sliderIndex + 1;

                  controller.pageController.jumpToPage(controller.sliderIndex);
                } else {
                  PrefUtils.setIntro(false);
                  onTapNext();
                  // controller.sliderIndex == 2? onTapNext():Container();
                }
              });
        },
        // ), CustomElevatedButton(
        //         text: "lbl_next".tr,
        //         margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 52.v),
        //         onTap: () {
        //           // onTapNext();
      )),
    );
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onboardingTwoScreen.
  onTapNext() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onboardingThreeScreen.
  onTapTxtSkip() {
    Get.toNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
