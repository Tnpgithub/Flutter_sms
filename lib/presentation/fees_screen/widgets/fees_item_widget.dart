import '../controller/fees_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';

// ignore: must_be_immutable
class FeesItemWidget extends StatelessWidget {
  final String fee_structure_name;
  final String amount_residual;
  final String invoice_date_due;
  final String paid;
  final Color color;
  FeesItemWidget({
    Key? key,
    required this.fee_structure_name,
    required this.amount_residual,
    required this.invoice_date_due,
    required this.paid,
    required this.color,
  }) : super(
          key: key,
        );

  // FeesItemWidgetsItemModel feesItemModelObj;

  var controller = Get.find<FeesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgCalendar,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 5.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 4.v,
                ),
                child: Text(
                  invoice_date_due,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Spacer(),
              Container(
                width: 80,
                height: 28,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: color),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    paid,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 12.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      // height: 0.12,
                    ),
                  ),
                ),
              ),
              // CustomOutlinedButton(
              //   width: 80.h,
              //   text: paid,
              //   buttonStyle: CustomButtonStyles.outlineRed,
              //   buttonTextStyle: CustomTextStyles.labelLargeRed70001,
              // ),
            ],
          ),
          SizedBox(height: 9.v),
          Text(
            fee_structure_name,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 5.v),
          Text(
            amount_residual,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
