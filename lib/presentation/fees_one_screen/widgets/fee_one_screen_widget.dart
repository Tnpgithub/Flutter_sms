import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_outlined_button.dart';

class FeeOneScreenWidgets extends StatelessWidget {
  final String name;
  final double price_subtotal;
  // final double price_unit;
  const FeeOneScreenWidgets({
    Key? key,
    required this.name,
    required this.price_subtotal,
    //   required this.price_unit
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
            child: Column(children: [
              Container(
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgCalendar,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 5.v)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 4.v),
                              child: Text("lbl_07_sep_2023".tr,
                                  style: theme.textTheme.bodyMedium)),
                          Spacer(),
                          CustomOutlinedButton(
                              width: 80.h,
                              text: "lbl_unpaid".tr,
                              buttonStyle: CustomButtonStyles.outlineRed,
                              buttonTextStyle:
                                  CustomTextStyles.labelLargeRed70001)
                        ]),
                        SizedBox(height: 10.v),
                        Text(name, style: theme.textTheme.titleLarge)
                      ])),
              SizedBox(height: 16.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('price_subtotal',
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 19.v),
                                Text('price_unit',
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 20.v),
                                // Text("lbl_library_fee".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 19.v),
                                // Text("lbl_activity_fee".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 17.v),
                                // Text("lbl_extra_fee".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 20.v),
                                // Text("lbl_late_charges".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 18.v),
                                // Text("lbl_discount_5".tr,
                                //     style: theme.textTheme.bodyLarge)
                              ]),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(price_subtotal.toString(),
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 19.v),
                                // Text(price_unit.toString(),
                                //     style: theme.textTheme.bodyLarge),
                                SizedBox(height: 19.v),
                                // Text("lbl_2002".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 19.v),
                                // Text("lbl_250".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 19.v),
                                // Text("lbl_1502".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 19.v),
                                // Text("lbl_502".tr,
                                //     style: theme.textTheme.bodyLarge),
                                // SizedBox(height: 19.v),
                                // Text("lbl_503".tr,
                                //     style: theme.textTheme.bodyLarge)
                              ])
                        ]),
                    SizedBox(height: 20.v),
                    Divider(color: theme.colorScheme.onPrimaryContainer),
                    SizedBox(height: 22.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_total_fee".tr,
                              style: theme.textTheme.titleLarge),
                          Text("lbl_3600".tr, style: theme.textTheme.titleLarge)
                        ])
                  ])),
              SizedBox(height: 5.v)
            ]),
          )
        ],
      ),
    );
    // return Container(
    //   // padding: EdgeInsets.symmetric(vertical: 22.v),
    //   // decoration: AppDecoration.white,
    //   // child: CustomAppBar(
    //   //     leadingWidth: 44.h,
    //   //     leading: AppbarImage2(
    //   //         svgPath: ImageConstant.imgArrowleft,
    //   //         margin: EdgeInsets.only(
    //   //             left: 20.h, top: 6.v, bottom: 3.v),
    //   //         onTap: () {
    //   //           onTapArrowleftone();
    //   //         }),
    //   //     centerTitle: true,
    //   //     title: AppbarTitle(text: "lbl_fees_detail".tr))),
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
    //     child: Column(children: [
    //       Container(
    //           padding: EdgeInsets.all(20.h),
    //           decoration: AppDecoration.fillGray
    //               .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
    //           child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Row(children: [
    //                   CustomImageView(
    //                       svgPath: ImageConstant.imgCalendar,
    //                       height: 18.adaptSize,
    //                       width: 18.adaptSize,
    //                       margin: EdgeInsets.symmetric(vertical: 5.v)),
    //                   Padding(
    //                       padding:
    //                           EdgeInsets.only(left: 8.h, top: 6.v, bottom: 4.v),
    //                       child: Text("lbl_07_sep_2023".tr,
    //                           style: theme.textTheme.bodyMedium)),
    //                   Spacer(),
    //                   CustomOutlinedButton(
    //                       width: 80.h,
    //                       text: "lbl_unpaid".tr,
    //                       buttonStyle: CustomButtonStyles.outlineRed,
    //                       buttonTextStyle: CustomTextStyles.labelLargeRed70001)
    //                 ]),
    //                 SizedBox(height: 10.v),
    //                 for (var feeLine in feeLines)
    //                   Text(feeLine.name.toString(),
    //                       style: theme.textTheme.titleLarge)
    //               ])),
    //       SizedBox(height: 16.v),
    //       Container(
    //           padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v),
    //           decoration: AppDecoration.fillGray
    //               .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
    //           child: Column(mainAxisSize: MainAxisSize.min, children: [
    //             Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text("lbl_total_fee".tr,
    //                             style: theme.textTheme.bodyLarge),
    //                         SizedBox(height: 19.v),
    //                         Text("lbl_tuition_fee".tr,
    //                             style: theme.textTheme.bodyLarge),
    //                         SizedBox(height: 20.v),
    //                         // Text("lbl_library_fee".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 19.v),
    //                         // Text("lbl_activity_fee".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 17.v),
    //                         // Text("lbl_extra_fee".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 20.v),
    //                         // Text("lbl_late_charges".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 18.v),
    //                         // Text("lbl_discount_5".tr,
    //                         //     style: theme.textTheme.bodyLarge)
    //                       ]),
    //                   Column(
    //                       crossAxisAlignment: CrossAxisAlignment.end,
    //                       children: [
    //                         for (var feeLine in feeLines)
    //                           Text(feeLine.price_subtotal.toString(),
    //                               style: theme.textTheme.bodyLarge),
    //                         SizedBox(height: 19.v),
    //                         // Text("lbl_1000".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 19.v),
    //                         // Text("lbl_2002".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 19.v),
    //                         // Text("lbl_250".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 19.v),
    //                         // Text("lbl_1502".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 19.v),
    //                         // Text("lbl_502".tr,
    //                         //     style: theme.textTheme.bodyLarge),
    //                         // SizedBox(height: 19.v),
    //                         // Text("lbl_503".tr,
    //                         //     style: theme.textTheme.bodyLarge)
    //                       ])
    //                 ]),
    //             SizedBox(height: 20.v),
    //             Divider(color: theme.colorScheme.onPrimaryContainer),
    //             SizedBox(height: 22.v),
    //             Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text("lbl_total_fee".tr,
    //                       style: theme.textTheme.titleLarge),
    //                   Text("lbl_3600".tr, style: theme.textTheme.titleLarge)
    //                 ])
    //           ])),
    //       SizedBox(height: 5.v)
    //     ]),
    //   ),
    // bottomNavigationBar:
    // CustomElevatedButton(
    //     text: "lbl_pay_now".tr,
    //     margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 40.v),
    //     onTap: () {
    //       onTapPaynow();
    //     }));
  }

  /// Navigates to the paymentOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the paymentOneScreen.
  onTapPaynow() {
    Get.toNamed(
      AppRoutes.paymentOneScreen,
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
