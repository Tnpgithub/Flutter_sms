// // // import 'package:flutter/material.dart';
// // // import 'package:student_app/Services/fees_api.dart';
// // // import 'package:student_app/core/app_export.dart';
// // // import 'package:student_app/presentation/fees_one_screen/widgets/fee_one_screen_widget.dart';
// // // import 'package:student_app/presentation/fees_screen/models/fees_model.dart';
// // // import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
// // // import 'package:student_app/widgets/app_bar/appbar_title.dart';
// // // import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

// // // class FeesOneScreen extends StatefulWidget {
// // //   const FeesOneScreen({Key? key}) : super(key: key);

// // //   @override
// // //   _FeesOneScreenState createState() => _FeesOneScreenState();
// // // }

// // // class _FeesOneScreenState extends State<FeesOneScreen> {
// // //   List<FeeLineModel> feeLines = []; // Store fee line data here

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     fetchFees(); // Fetch fee line data
// // //   }

// // //   Future<void> fetchFees() async {
// // //     final response = await FeesApi.fetchFees();
// // //     if (response.isNotEmpty) {
// // //       setState(() {
// // //         feeLines = response[0]
// // //             .invoiceLines; // Assuming you only need data from the first FeeModel
// // //       });
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     mediaQueryData = MediaQuery.of(context);
// // //     return Scaffold(
// // //         body: SizedBox(
// // //             width: double.maxFinite,
// // //             child: Column(children: [
// // //               Container(
// // //                   padding: EdgeInsets.symmetric(vertical: 22.v),
// // //                   decoration: AppDecoration.white,
// // //                   child: CustomAppBar(
// // //                       leadingWidth: 44.h,
// // //                       leading: AppbarImage2(
// // //                           svgPath: ImageConstant.imgArrowleft,
// // //                           margin: EdgeInsets.only(
// // //                               left: 20.h, top: 6.v, bottom: 3.v),
// // //                           onTap: () {
// // //                             onTapArrowleftone();
// // //                           }),
// // //                       centerTitle: true,
// // //                       title: AppbarTitle(text: "lbl_fees_detail".tr))),
// // //               Expanded(
// // //                 child: Padding(
// // //                   padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
// // //                   child: GridView.builder(
// // //                       padding: EdgeInsets.zero,
// // //                       shrinkWrap: true,
// // //                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                           mainAxisExtent: 206.v,
// // //                           crossAxisCount: 2,
// // //                           mainAxisSpacing: 20.h,
// // //                           crossAxisSpacing: 20.h),
// // //                       physics: BouncingScrollPhysics(),
// // //                       itemCount: feeLines.length,
// // //                       itemBuilder: (context, index) {
// // //                         return FeeOneScreenWidgets(
// // //                             name: feeLines[index].name,
// // //                             price_subtotal: feeLines[index].price_subtotal,
// // //                             price_unit: feeLines[index].price_unit);
// // //                       }),
// // //                 ),
// // //               )
// // //             ])));
// // //   }

// // //   // Padding(
// // //   //   padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
// // //   //   child: Column(children: [
// // //   //     Container(
// // //   //         padding: EdgeInsets.all(20.h),
// // //   //         decoration: AppDecoration.fillGray.copyWith(
// // //   //             borderRadius: BorderRadiusStyle.roundedBorder8),
// // //   //         child: Column(
// // //   //             mainAxisSize: MainAxisSize.min,
// // //   //             crossAxisAlignment: CrossAxisAlignment.start,
// // //   //             mainAxisAlignment: MainAxisAlignment.center,
// // //   //             children: [
// // //   //               Row(children: [
// // //   //                 CustomImageView(
// // //   //                     svgPath: ImageConstant.imgCalendar,
// // //   //                     height: 18.adaptSize,
// // //   //                     width: 18.adaptSize,
// // //   //                     margin: EdgeInsets.symmetric(vertical: 5.v)),
// // //   //                 Padding(
// // //   //                     padding: EdgeInsets.only(
// // //   //                         left: 8.h, top: 6.v, bottom: 4.v),
// // //   //                     child: Text("lbl_07_sep_2023".tr,
// // //   //                         style: theme.textTheme.bodyMedium)),
// // //   //                 Spacer(),
// // //   //                 CustomOutlinedButton(
// // //   //                     width: 80.h,
// // //   //                     text: "lbl_unpaid".tr,
// // //   //                     buttonStyle: CustomButtonStyles.outlineRed,
// // //   //                     buttonTextStyle:
// // //   //                         CustomTextStyles.labelLargeRed70001)
// // //   //               ]),
// // //   //               SizedBox(height: 10.v),
// // //   //               for (var feeLine in feeLines)
// // //   //                 Text(feeLine.name.toString(),
// // //   //                     style: theme.textTheme.titleLarge)
// // //   //             ])),
// // //   //     SizedBox(height: 16.v),
// // //   //     Container(
// // //   //         padding: EdgeInsets.symmetric(
// // //   //             horizontal: 20.h, vertical: 22.v),
// // //   //         decoration: AppDecoration.fillGray.copyWith(
// // //   //             borderRadius: BorderRadiusStyle.roundedBorder8),
// // //   //         child: Column(mainAxisSize: MainAxisSize.min, children: [
// // //   //           Row(
// // //   //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //   //               children: [
// // //   //                 Column(
// // //   //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //   //                     children: [
// // //   //                       Text("lbl_total_fee".tr,
// // //   //                           style: theme.textTheme.bodyLarge),
// // //   //                       SizedBox(height: 19.v),
// // //   //                       Text("lbl_tuition_fee".tr,
// // //   //                           style: theme.textTheme.bodyLarge),
// // //   //                       SizedBox(height: 20.v),
// // //   //                       // Text("lbl_library_fee".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 19.v),
// // //   //                       // Text("lbl_activity_fee".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 17.v),
// // //   //                       // Text("lbl_extra_fee".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 20.v),
// // //   //                       // Text("lbl_late_charges".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 18.v),
// // //   //                       // Text("lbl_discount_5".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge)
// // //   //                     ]),
// // //   //                 Column(
// // //   //                     crossAxisAlignment: CrossAxisAlignment.end,
// // //   //                     children: [
// // //   //                       for (var feeLine in feeLines)
// // //   //                         Text(feeLine.price_subtotal.toString(),
// // //   //                             style: theme.textTheme.bodyLarge),
// // //   //                       SizedBox(height: 19.v),
// // //   //                       // Text("lbl_1000".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 19.v),
// // //   //                       // Text("lbl_2002".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 19.v),
// // //   //                       // Text("lbl_250".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 19.v),
// // //   //                       // Text("lbl_1502".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 19.v),
// // //   //                       // Text("lbl_502".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge),
// // //   //                       // SizedBox(height: 19.v),
// // //   //                       // Text("lbl_503".tr,
// // //   //                       //     style: theme.textTheme.bodyLarge)
// // //   //                     ])
// // //   //               ]),
// // //   //           SizedBox(height: 20.v),
// // //   //           Divider(color: theme.colorScheme.onPrimaryContainer),
// // //   //           SizedBox(height: 22.v),
// // //   //           Row(
// // //   //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //   //               children: [
// // //   //                 Text("lbl_total_fee".tr,
// // //   //                     style: theme.textTheme.titleLarge),
// // //   //                 Text("lbl_3600".tr,
// // //   //                     style: theme.textTheme.titleLarge)
// // //   //               ])
// // //   //         ])),
// // //   //     SizedBox(height: 5.v)
// // //   //   ]),
// // //   // )
// // //   // bottomNavigationBar: CustomElevatedButton(
// // //   //     text: "lbl_pay_now".tr,
// // //   //     margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 40.v),
// // //   //     onTap: () {
// // //   //       onTapPaynow();
// // //   //     }

// // //   /// Navigates to the paymentOneScreen when the action is triggered.

// // //   /// When the action is triggered, this function uses the [Get] package to
// // //   /// push the named route for the paymentOneScreen.
// // //   onTapPaynow() {
// // //     Get.toNamed(
// // //       AppRoutes.paymentOneScreen,
// // //     );
// // //   }

// // //   /// Navigates to the previous screen.
// // //   ///
// // //   /// When the action is triggered, this function uses the [Get] package to
// // //   /// navigate to the previous screen in the navigation stack.
// // //   onTapArrowleftone() {
// // //     Get.back();
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:student_app/Services/fees_api.dart';
// // import 'package:student_app/core/app_export.dart';
// // import 'package:student_app/presentation/fees_one_screen/widgets/fee_one_screen_widget.dart';
// // import 'package:student_app/presentation/fees_screen/models/fees_model.dart';
// // import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
// // import 'package:student_app/widgets/app_bar/appbar_title.dart';
// // import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

// // class FeesOneScreen extends StatefulWidget {
// //   const FeesOneScreen({Key? key}) : super(key: key);

// //   @override
// //   _FeesOneScreenState createState() => _FeesOneScreenState();
// // }

// // class _FeesOneScreenState extends State<FeesOneScreen> {
// //   List<FeeLineModel> feeLines = []; // Store fee line data here

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchFees(); // Fetch fee line data
// //   }

// //   Future<void> fetchFees() async {
// //     final response = await FeesApi.fetchFees();
// //     if (response.isNotEmpty) {
// //       setState(() {
// //         feeLines = response[0]
// //             .invoiceLines; // Assuming you only need data from the first FeeModel
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: CustomAppBar(
// //         leadingWidth: 44.h,
// //         leading: AppbarImage2(
// //           svgPath: ImageConstant.imgArrowleft,
// //           margin: EdgeInsets.only(left: 20.h, top: 6.v, bottom: 3.v),
// //           onTap: () {
// //             onTapArrowleftone();
// //           },
// //         ),
// //         centerTitle: true,
// //         title: AppbarTitle(text: "lbl_fees_detail".tr),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: Padding(
// //               padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
// //               child: GridView.builder(
// //                 padding: EdgeInsets.zero,
// //                 shrinkWrap: true,
// //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                   mainAxisExtent: 206.v,
// //                   crossAxisCount: 2,
// //                   mainAxisSpacing: 20.h,
// //                   crossAxisSpacing: 20.h,
// //                 ),
// //                 physics: BouncingScrollPhysics(),
// //                 itemCount: feeLines.length,
// //                 itemBuilder: (context, index) {
// //                   return FeeOneScreenWidgets(
// //                     name: feeLines[index].name,
// //                     price_subtotal: feeLines[index].price_subtotal,
// //                     price_unit: feeLines[index].price_unit,
// //                   );
// //                 },
// //               ),
// //             ),
// //           ),
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
// //             child: ElevatedButton(
// //               onPressed: onTapPaynow,
// //               child: Text('Pay Now'),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   /// Navigates to the paymentOneScreen when the action is triggered.
// //   onTapPaynow() {
// //     // Navigate to paymentOneScreen
// //     Get.toNamed(AppRoutes.paymentOneScreen);
// //   }

// //   /// Navigates to the previous screen.
// //   onTapArrowleftone() {
// //     // Navigate back
// //     Get.back();
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:student_app/Services/fees_api.dart';
// import 'package:student_app/core/app_export.dart';
// import 'package:student_app/presentation/fees_one_screen/widgets/fee_one_screen_widget.dart';
// import 'package:student_app/presentation/fees_screen/models/fees_model.dart';
// import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
// import 'package:student_app/widgets/app_bar/appbar_title.dart';
// import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

// class FeesOneScreen extends StatefulWidget {
//   const FeesOneScreen({Key? key}) : super(key: key);

//   @override
//   _FeesOneScreenState createState() => _FeesOneScreenState();
// }

// class _FeesOneScreenState extends State<FeesOneScreen> {
//   List<FeeLineModel> feeLines = []; // Store fee line data here

//   @override
//   void initState() {
//     super.initState();
//     fetchFees(); // Fetch fee line data
//   }

//   Future<void> fetchFees() async {
//     final response = await FeesApi.fetchFees();
//     if (response.isNotEmpty) {
//       setState(() {
//         feeLines = response[0]
//             .invoiceLines; // Assuming you only need data from the first FeeModel
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         leadingWidth: 44.h,
//         leading: AppbarImage2(
//           svgPath: ImageConstant.imgArrowleft,
//           margin: EdgeInsets.only(left: 20.h, top: 6.v, bottom: 3.v),
//           onTap: () {
//             onTapArrowleftone();
//           },
//         ),
//         centerTitle: true,
//         title: AppbarTitle(text: "lbl_fees_detail".tr),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   for (var feeLine in feeLines)
//                     FeeOneScreenWidgets(
//                       name: feeLine.name,
//                       price_subtotal: feeLine.price_subtotal,
//                       price_unit: feeLine.price_unit,
//                     ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
//               child: ElevatedButton(
//                 onPressed: onTapPaynow,
//                 child: Text('Pay Now'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Navigates to the paymentOneScreen when the action is triggered.
//   onTapPaynow() {
//     // Navigate to paymentOneScreen
//     Get.toNamed(AppRoutes.paymentOneScreen);
//   }

//   /// Navigates to the previous screen.
//   onTapArrowleftone() {
//     // Navigate back
//     Get.back();
//   }
// }

import 'package:flutter/material.dart';
import 'package:student_app/Services/fees_api.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/fees_one_screen/widgets/fee_one_screen_widget.dart';
import 'package:student_app/presentation/fees_screen/models/fees_model.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class FeesOneScreen extends StatefulWidget {
  const FeesOneScreen({Key? key}) : super(key: key);

  @override
  _FeesOneScreenState createState() => _FeesOneScreenState();
}

class _FeesOneScreenState extends State<FeesOneScreen> {
  List<FeeLineModel> feeLines = []; // Store fee line data here

  @override
  void initState() {
    super.initState();
    fetchFees(); // Fetch fee line data
  }

  Future<void> fetchFees() async {
    final response = await FeesApi.fetchFees();
    if (response.isNotEmpty) {
      setState(() {
        feeLines = response[0]
            .invoiceLines; // Assuming you only need data from the first FeeModel
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("lbl_fees_detail".tr),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var fee in feeLines)
                    FeeOneScreenWidgets(
                      name: fee.name,
                      price_subtotal: fee.price_subtotal,
                      //   price_unit: fee.price_unit,
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Fees:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    // Calculate total fees here
                    "\$${calculateTotalFees()}",
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: onTapPaynow,
                      child: Text(
                        "Pay Now",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateTotalFees() {
    double total = 0;
    for (var fee in feeLines) {
      total += fee.price_subtotal;
    }
    return total;
  }

  void onTapPaynow() {
    Get.toNamed(AppRoutes.paymentOneScreen);
  }

  void onTapArrowleftone() {
    Get.back();
  }
}
