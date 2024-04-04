import 'package:student_app/Services/fees_api.dart';
import 'package:student_app/presentation/fees_screen/models/fees_model.dart';

import '../fees_screen/widgets/fees_item_widget.dart';
import 'models/fees_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';

class FeesScreen extends StatefulWidget {
  const FeesScreen({Key? key}) : super(key: key);

  @override
  State<FeesScreen> createState() => _FeesScreenState();
}

class _FeesScreenState extends State<FeesScreen> {
  List<FeeModel> fees = [];

  @override
  void initState() {
    super.initState();
    fetchfees();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Column(children: [
      Container(
          padding: EdgeInsets.symmetric(vertical: 23.v),
          decoration: AppDecoration.white,
          child: CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarImage2(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 4.v),
                  onTap: () {
                    onTapArrowleftone();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Fees"))),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16.v);
                  },
                  itemCount: fees.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.feesOneScreen);
                      },
                      child: FeesItemWidget(
                          color: feesData[index].color,
                          fee_structure_name: fees[index].fee_structure_name,
                          amount_residual:
                              fees[index].amount_residual.toString(),
                          invoice_date_due: fees[index].invoice_date_due,
                          paid: feesData[index].paid),
                    );
                  })))
    ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  Future<void> fetchfees() async {
    final response = await FeesApi.fetchFees();

    setState(() {
      fees = response;
    });
  }
}
