import 'package:student_app/presentation/apply_leave_screen/widget/chech_box_cell.dart';

import 'controller/apply_leave_controller.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_app/widgets/custom_drop_down.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';
import 'package:student_app/widgets/custom_text_form_field.dart';

class ApplyLeaveScreen extends GetWidget<ApplyLeaveController> {
  const ApplyLeaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> text = ["Half Day Leave".tr, "lbl_full_day_leave2".tr];
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 21.v),
            decoration: AppDecoration.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                CustomAppBar(
                    leadingWidth: 44.h,
                    leading: AppbarImage2(
                        svgPath: ImageConstant.imgArrowleft,
                        margin:
                            EdgeInsets.only(left: 20.h, top: 3.v, bottom: 6.v),
                        onTap: () {
                          onTapArrowleftone();
                        }),
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_apply_leave".tr))
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropDown(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                        icon:
                            CustomImageView(svgPath: ImageConstant.imgArrowdown)
                                .marginOnly(right: 16.h),
                        hintText: "msg_select_leave_type".tr,
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          // height: 0.09,
                        ),
                        items: controller
                            .applyLeaveModelObj.value.dropdownItemList.value,
                        onChanged: (value) {
                          controller.onSelected(value);
                        }),
                    SizedBox(height: 24.v),
                    // CustomOutlinedButton(
                    //     height: 54.v,
                    //     text: "lbl_start_date".tr,
                    //     rightIcon: Container(
                    //         margin: EdgeInsets.only(left: 30.h),
                    //         child: CustomImageView(
                    //             svgPath: ImageConstant.imgCalendar)),
                    //     isDisabled: true),
                    GestureDetector(
                        onTap: () {
                          selectDate();
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 15.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2.v, bottom: 1.v),
                                      child: Obx(() => Text(
                                          controller.applyLeaveModelObj.value
                                              .date.value,
                                          style: CustomTextStyles
                                              .bodyLargeGray700))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)
                                ]))),
                    SizedBox(height: 24.v),
                    GestureDetector(
                        onTap: () {
                          onTapRowtypehere();
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 15.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2.v, bottom: 1.v),
                                      child: Obx(() => Text(
                                          controller.applyLeaveModelObj.value
                                              .typehere.value,
                                          style: CustomTextStyles
                                              .bodyLargeGray700))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)
                                ]))),
                    SizedBox(height: 24.v),
                    CustomTextFormField(
                        autofocus: false,
                        controller: controller.reasonforleaveController,
                        hintText: "msg_reason_for_leave".tr,
                        textInputAction: TextInputAction.done,
                        maxLines: 6),
                    SizedBox(height: 24.v),

                    Container(
                      height: 50.h,
                      // color: Colors.red,
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            GetBuilder<ApplyLeaveController>(
                          builder: (controller) {
                            return CheckBoxSell(
                              index: index,
                              text: text[index].tr,
                            );
                            // return Row(
                            //   children: [
                            //     Expanded(
                            //       child: Center(
                            //         child: CheckboxListTile(
                            //           title: Text("Checkbox Text"),
                            //           value: controller.isChecked,
                            //           onChanged: controller.isEnabled
                            //               ? (val) {
                            //          controller.update();
                            //               controller.isChecked = val!;
                            //
                            //           }
                            //               : null,
                            //         ),
                            //       ),
                            //     ),
                            //   ],
                            // );
                          },
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          width: 32.h,
                        ),
                        itemCount: text.length,
                      ),
                    ),
                    // Row(children: [
                    //   Obx(() =>
                    //       CustomCheckboxButton(
                    //           text: "lbl_half_day_leave".tr,
                    //           value: controller.halfDayLeave.value,
                    //           padding: EdgeInsets.symmetric(vertical: 1.v),
                    //           onChange: (value) {
                    //             controller.halfDayLeave.value = value;
                    //           })),
                    //   Obx(() =>
                    //       CustomCheckboxButton(
                    //           text: "lbl_full_day_leave2".tr,
                    //           value: controller.fullDayLeave.value,
                    //           margin: EdgeInsets.only(left: 32.h),
                    //           padding: EdgeInsets.symmetric(vertical: 1.v),
                    //           onChange: (value) {
                    //             controller.fullDayLeave.value = value;
                    //           }))
                    // ]),
                    SizedBox(height: 5.v)
                  ]))
        ]),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_apply".tr,
            onTap: () {
              Get.back();
            },
            margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 40.v)));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [applyLeaveModelObj] object of the current [typehere] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapRowtypehere() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              primarySwatch: Colors.grey,
              splashColor: Colors.black,
              textTheme: TextTheme(
                // ignore: deprecated_member_use
                subtitle1: TextStyle(color: Colors.black),
                // ignore: deprecated_member_use
                button: TextStyle(color: Colors.black),
              ),
              // blackckaccentColor: Colors.black,
              colorScheme: ColorScheme.light(
                  primary: theme.colorScheme.primary,
                  // primaryVariant: Colors.black,
                  // secondaryVariant: Colors.black,
                  onSecondary: Colors.black,
                  onPrimary: Colors.white,
                  surface: Colors.white,
                  onSurface: Colors.black,
                  secondary: Colors.black),
              dialogBackgroundColor: Colors.white,
            ),
            child: child ?? Text(""),
          );
        },
        initialDate:
            controller.applyLeaveModelObj.value.selectedTypehere!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.applyLeaveModelObj.value.selectedTypehere!.value = dateTime;
      controller.applyLeaveModelObj.value.typehere.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  Future<void> selectDate() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              primarySwatch: Colors.grey,
              splashColor: Colors.black,
              textTheme: TextTheme(
                // ignore: deprecated_member_use
                subtitle1: TextStyle(color: Colors.black),
                // ignore: deprecated_member_use
                button: TextStyle(color: Colors.black),
              ),
              // blackckaccentColor: Colors.black,
              colorScheme: ColorScheme.light(
                  primary: theme.colorScheme.primary,
                  // primaryVariant: Colors.black,
                  // secondaryVariant: Colors.black,
                  onSecondary: Colors.black,
                  onPrimary: Colors.white,
                  surface: Colors.white,
                  onSurface: Colors.black,
                  secondary: Colors.black),
              dialogBackgroundColor: Colors.white,
            ),
            child: child ?? Text(""),
          );
        },
        initialDate: controller.applyLeaveModelObj.value.selectDate!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.applyLeaveModelObj.value.selectDate!.value = dateTime;
      controller.applyLeaveModelObj.value.date.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  // Future<void> _selectDate(BuildContext context) async {
  //   DateTime? picked = await showDatePicker(
  //       context: Get.context!,
  //
  //
  //       initialDate:
  //       controller.applyLeaveModelObj.value.selectedTypehere!.value,
  //       firstDate: DateTime(1970),
  //       lastDate: DateTime(
  //           DateTime
  //               .now()
  //               .year, DateTime
  //           .now()
  //           .month, DateTime
  //           .now()
  //           .day));
  //   if (dateTime != null) {
  //     controller.applyLeaveModelObj.value.selectedTypehere!.value = dateTime;
  //     controller.applyLeaveModelObj.value.typehere.value =
  //         dateTime.format(dateTimeFormatPattern);
  //   }
  // }
  //   );
  // lightastDate: DateTime.now());
  // if (picked != null && picked != selectedDate)
  //   setState(() {
  //     selectedDate = picked;
  //
  //
  //     String da = picked.day.toString() +
  //         "-" +
  //         picked.month.toString() +
  //         "-" +
  //         picked.year.toString();
  //     dateOfBirth.text = da;
  //   });}

  // Future<void> selectDate() async {
  //   DateTime? dateTime = await showDatePicker(
  //       context: Get.context!,
  //       builder: (context, child) {
  //         return Theme(
  //           data: ThemeData.light().copyWith(
  //             colorScheme: ColorScheme.fromSwatch(
  //               primarySwatch: Colors.teal,
  //               primaryColorDark: Colors.teal,
  //               accentColor: Colors.teal,
  //             ),
  //             dialogBackgroundColor:Colors.white,
  //           ),
  //           child: Container(),
  //         );
  //       },
  //
  //       initialDate:
  //       controller.applyLeaveModelObj.value.selectDate!.value,
  //       firstDate: DateTime(1970),
  //       lastDate: DateTime(
  //           DateTime.now().year, DateTime.now().month, DateTime.now().day));
  //   if (dateTime != null) {
  //     controller.applyLeaveModelObj.value.selectDate!.value = dateTime;
  //     controller.applyLeaveModelObj.value.date.value =
  //         dateTime.format(dateTimeFormatPattern);
  //   }
  // }
}
