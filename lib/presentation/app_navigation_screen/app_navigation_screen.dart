import 'controller/app_navigation_controller.dart';import 'package:flutter/material.dart';import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/pop_up_dialog/pop_up_dialog.dart';import 'package:student_app/presentation/pop_up_dialog/controller/pop_up_controller.dart';class AppNavigationScreen extends GetWidget<AppNavigationController> {const AppNavigationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: 375.h, child: Column(children: [Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_app_navigation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_check_your_app_s".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.blueGray400, fontSize: 16.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.black900)])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.white, child: Column(children: [GestureDetector(onTap: () {onTapSplash();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_splash".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingOne();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingTwo();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingThree();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_onboarding_three".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapPopup();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_pop_up".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapLogin();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_login2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapLoginError();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_login_error".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapLoginFill();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_login_fill".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapSignup();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_sign_up".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapForgotPassword();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_forgot_password2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapVerification();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_verification".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapVerificationOne();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_verification_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapResetPassword();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_reset_password".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapSelectRole();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_select_role".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapHomeContainer();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_home_container".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapUpcomingEvents();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_upcoming_events".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapExamExamSchedule();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_exam_exam_schedule".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapExamResultTabContainer();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_exam_result_tab".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapFirstTermExam();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_first_term_exam".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapLeave();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_leave2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapApplyLeave();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_apply_leave".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapApplyLeaveFill();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_apply_leave_fill".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapFees();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_fees".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapFeesOne();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_fees_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapPaymentOne();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_payment_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapPayment();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_payment".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapHomeWork();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_home_work".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapCommunity();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_community".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapSportsDay();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_sports_day".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapNotice();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_notice".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapHolidayAndVacation();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_holiday_and_vacation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapMessageGroups();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_message_groups".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapNotifications();}, child: Container(decoration: AppDecoration.white, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_notifications".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)])))]))))])))); } 
/// Navigates to the splashScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the splashScreen.
onTapSplash() { Get.toNamed(AppRoutes.splashScreen, ); } 
/// Navigates to the onboardingOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingOneScreen.
onTapOnboardingOne() { Get.toNamed(AppRoutes.onboardingOneScreen, ); } 
/// Navigates to the onboardingTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingTwoScreen.
onTapOnboardingTwo() { Get.toNamed(AppRoutes.onboardingTwoScreen, ); } 
/// Navigates to the onboardingThreeScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingThreeScreen.
onTapOnboardingThree() { Get.toNamed(AppRoutes.onboardingThreeScreen, ); } 


/// Displays a dialog with the [PopUpDialog] content.
///
/// The [PopUpDialog] widget is created with a new 
/// instance of the [PopUpController],
/// which is obtained using the Get.put() method.
onTapPopup() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:PopUpDialog(Get.put(PopUpController(),),),)); } 
/// Navigates to the loginScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the loginScreen.
onTapLogin() { Get.toNamed(AppRoutes.loginScreen, ); } 
/// Navigates to the loginErrorScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the loginErrorScreen.
onTapLoginError() { Get.toNamed(AppRoutes.loginErrorScreen, ); } 
/// Navigates to the loginFillScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the loginFillScreen.
onTapLoginFill() { Get.toNamed(AppRoutes.loginFillScreen, ); } 
/// Navigates to the signUpScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the signUpScreen.
onTapSignup() { Get.toNamed(AppRoutes.signUpScreen, ); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgotPasswordScreen.
onTapForgotPassword() { Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
/// Navigates to the verificationScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the verificationScreen.
onTapVerification() { Get.toNamed(AppRoutes.verificationScreen, ); } 
/// Navigates to the verificationOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the verificationOneScreen.
onTapVerificationOne() { Get.toNamed(AppRoutes.verificationOneScreen, ); } 
/// Navigates to the resetPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the resetPasswordScreen.
onTapResetPassword() { Get.toNamed(AppRoutes.resetPasswordScreen, ); } 
/// Navigates to the selectRoleScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the selectRoleScreen.
onTapSelectRole() { Get.toNamed(AppRoutes.selectRoleScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the homeContainerScreen.
onTapHomeContainer() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the upcomingEventsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the upcomingEventsScreen.
onTapUpcomingEvents() { Get.toNamed(AppRoutes.upcomingEventsScreen, ); } 
/// Navigates to the examExamScheduleScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the examExamScheduleScreen.
onTapExamExamSchedule() { Get.toNamed(AppRoutes.examExamScheduleScreen, ); } 
/// Navigates to the examResultTabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the examResultTabContainerScreen.
onTapExamResultTabContainer() { Get.toNamed(AppRoutes.examResultTabContainerScreen, ); } 
/// Navigates to the firstTermExamScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the firstTermExamScreen.
onTapFirstTermExam() { Get.toNamed(AppRoutes.firstTermExamScreen, ); } 
/// Navigates to the leaveScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the leaveScreen.
onTapLeave() { Get.toNamed(AppRoutes.leaveScreen, ); } 
/// Navigates to the applyLeaveScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the applyLeaveScreen.
onTapApplyLeave() { Get.toNamed(AppRoutes.applyLeaveScreen, ); } 
/// Navigates to the applyLeaveFillScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the applyLeaveFillScreen.
onTapApplyLeaveFill() { Get.toNamed(AppRoutes.applyLeaveFillScreen, ); } 
/// Navigates to the feesScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the feesScreen.
onTapFees() { Get.toNamed(AppRoutes.feesScreen, ); } 
/// Navigates to the feesOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the feesOneScreen.
onTapFeesOne() { Get.toNamed(AppRoutes.feesOneScreen, ); } 
/// Navigates to the paymentOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the paymentOneScreen.
onTapPaymentOne() { Get.toNamed(AppRoutes.paymentOneScreen, ); } 
/// Navigates to the paymentScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the paymentScreen.
onTapPayment() { Get.toNamed(AppRoutes.paymentScreen, ); } 
/// Navigates to the homeWorkScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the homeWorkScreen.
onTapHomeWork() { Get.toNamed(AppRoutes.homeWorkScreen, ); } 
/// Navigates to the communityScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the communityScreen.
onTapCommunity() { Get.toNamed(AppRoutes.communityScreen, ); } 
/// Navigates to the sportsDayScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the sportsDayScreen.
onTapSportsDay() { Get.toNamed(AppRoutes.sportsDayScreen, ); } 
/// Navigates to the noticeScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the noticeScreen.
onTapNotice() { Get.toNamed(AppRoutes.noticeScreen, ); } 
/// Navigates to the holidayAndVacationScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the holidayAndVacationScreen.
onTapHolidayAndVacation() { Get.toNamed(AppRoutes.holidayAndVacationScreen, ); } 
/// Navigates to the messageGroupsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the messageGroupsScreen.
onTapMessageGroups() { Get.toNamed(AppRoutes.messageGroupsScreen, ); } 
/// Navigates to the notificationsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the notificationsScreen.
onTapNotifications() { Get.toNamed(AppRoutes.notificationsScreen, ); } 
 }
