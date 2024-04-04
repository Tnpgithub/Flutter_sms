import 'package:student_app/presentation/splash_screen/splash_screen.dart';
import 'package:student_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:student_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:student_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:student_app/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:student_app/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:student_app/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:student_app/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:student_app/presentation/login_screen/login_screen.dart';
import 'package:student_app/presentation/login_screen/binding/login_binding.dart';
import 'package:student_app/presentation/login_error_screen/login_error_screen.dart';
import 'package:student_app/presentation/login_error_screen/binding/login_error_binding.dart';
import 'package:student_app/presentation/login_fill_screen/login_fill_screen.dart';
import 'package:student_app/presentation/login_fill_screen/binding/login_fill_binding.dart';
import 'package:student_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:student_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:student_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:student_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:student_app/presentation/verification_screen/verification_screen.dart';
import 'package:student_app/presentation/verification_screen/binding/verification_binding.dart';
import 'package:student_app/presentation/verification_one_screen/verification_one_screen.dart';
import 'package:student_app/presentation/verification_one_screen/binding/verification_one_binding.dart';
import 'package:student_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:student_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:student_app/presentation/select_role_screen/select_role_screen.dart';
import 'package:student_app/presentation/select_role_screen/binding/select_role_binding.dart';
import 'package:student_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:student_app/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:student_app/presentation/upcoming_events_screen/upcoming_events_screen.dart';
import 'package:student_app/presentation/upcoming_events_screen/binding/upcoming_events_binding.dart';
import 'package:student_app/presentation/exam_exam_schedule_screen/exam_exam_schedule_screen.dart';
import 'package:student_app/presentation/exam_exam_schedule_screen/binding/exam_exam_schedule_binding.dart';
import 'package:student_app/presentation/exam_result_tab_container_screen/exam_result_tab_container_screen.dart';
import 'package:student_app/presentation/exam_result_tab_container_screen/binding/exam_result_tab_container_binding.dart';
import 'package:student_app/presentation/first_term_exam_screen/first_term_exam_screen.dart';
import 'package:student_app/presentation/first_term_exam_screen/binding/first_term_exam_binding.dart';
import 'package:student_app/presentation/leave_screen/leave_screen.dart';
import 'package:student_app/presentation/leave_screen/binding/leave_binding.dart';
import 'package:student_app/presentation/apply_leave_screen/apply_leave_screen.dart';
import 'package:student_app/presentation/apply_leave_screen/binding/apply_leave_binding.dart';
import 'package:student_app/presentation/apply_leave_fill_screen/apply_leave_fill_screen.dart';
import 'package:student_app/presentation/apply_leave_fill_screen/binding/apply_leave_fill_binding.dart';
import 'package:student_app/presentation/fees_screen/fees_screen.dart';
import 'package:student_app/presentation/fees_screen/binding/fees_binding.dart';
import 'package:student_app/presentation/fees_one_screen/fees_one_screen.dart';
import 'package:student_app/presentation/fees_one_screen/binding/fees_one_binding.dart';
import 'package:student_app/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:student_app/presentation/payment_one_screen/binding/payment_one_binding.dart';
import 'package:student_app/presentation/payment_screen/payment_screen.dart';
import 'package:student_app/presentation/payment_screen/binding/payment_binding.dart';
import 'package:student_app/presentation/home_work_screen/home_work_screen.dart';
import 'package:student_app/presentation/home_work_screen/binding/home_work_binding.dart';
import 'package:student_app/presentation/community_screen/community_screen.dart';
import 'package:student_app/presentation/community_screen/binding/community_binding.dart';
import 'package:student_app/presentation/sports_day_screen/sports_day_screen.dart';
import 'package:student_app/presentation/sports_day_screen/binding/sports_day_binding.dart';
import 'package:student_app/presentation/notice_screen/notice_screen.dart';
import 'package:student_app/presentation/notice_screen/binding/notice_binding.dart';
import 'package:student_app/presentation/holiday_and_vacation_screen/holiday_and_vacation_screen.dart';
import 'package:student_app/presentation/holiday_and_vacation_screen/binding/holiday_and_vacation_binding.dart';
import 'package:student_app/presentation/message_groups_screen/message_groups_screen.dart';
import 'package:student_app/presentation/message_groups_screen/binding/message_groups_binding.dart';
import 'package:student_app/presentation/notifications_screen/notifications_screen.dart';
import 'package:student_app/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:student_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:student_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginScreen = '/login_screen';

  static const String loginErrorScreen = '/login_error_screen';

  static const String loginFillScreen = '/login_fill_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String selectRoleScreen = '/select_role_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String upcomingEventsScreen = '/upcoming_events_screen';

  static const String examExamScheduleScreen = '/exam_exam_schedule_screen';

  static const String examResultPage = '/exam_result_page';

  static const String examResultTabContainerScreen =
      '/exam_result_tab_container_screen';

  static const String firstTermExamScreen = '/first_term_exam_screen';

  static const String leaveScreen = '/leave_screen';

  static const String applyLeaveScreen = '/apply_leave_screen';

  static const String applyLeaveFillScreen = '/apply_leave_fill_screen';

  static const String feesScreen = '/fees_screen';

  static const String feesOneScreen = '/fees_one_screen';

  static const String paymentOneScreen = '/payment_one_screen';

  static const String paymentScreen = '/payment_screen';

  static const String homeWorkScreen = '/home_work_screen';

  static const String communityScreen = '/community_screen';

  static const String sportsDayScreen = '/sports_day_screen';

  static const String noticeScreen = '/notice_screen';

  static const String holidayAndVacationScreen = '/holiday_and_vacation_screen';

  static const String calendarPage = '/calendar_page';

  static const String calendarTimeTPage = '/calendar_time_t_page';

  static const String calendarTimeTTabContainerPage =
      '/calendar_time_t_tab_container_page';

  static const String messageIndividualPage = '/message_individual_page';

  static const String messageIndividualTabContainerPage =
      '/message_individual_tab_container_page';

  static const String messageGroupsOnePage = '/message_groups_one_page';

  static const String messageGroupsScreen = '/message_groups_screen';

  static const String profilePage = '/profile_page';

  static const String notificationsScreen = '/notifications_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: loginErrorScreen,
      page: () => LoginErrorScreen(),
      bindings: [
        LoginErrorBinding(),
      ],
    ),
    GetPage(
      name: loginFillScreen,
      page: () => LoginFillScreen(),
      bindings: [
        LoginFillBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: verificationOneScreen,
      page: () => VerificationOneScreen(),
      bindings: [
        VerificationOneBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: selectRoleScreen,
      page: () => SelectRoleScreen(),
      bindings: [
        SelectRoleBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: upcomingEventsScreen,
      page: () => UpcomingEventsScreen(),
      bindings: [
        UpcomingEventsBinding(),
      ],
    ),
    GetPage(
      name: examExamScheduleScreen,
      page: () => ExamExamScheduleScreen(),
      bindings: [
        ExamExamScheduleBinding(),
      ],
    ),
    GetPage(
      name: examResultTabContainerScreen,
      page: () => ExamResultTabContainerScreen(),
      bindings: [
        ExamResultTabContainerBinding(),
      ],
    ),
    GetPage(
      name: firstTermExamScreen,
      page: () => FirstTermExamScreen(),
      bindings: [
        FirstTermExamBinding(),
      ],
    ),
    GetPage(
      name: leaveScreen,
      page: () => LeaveScreen(),
      bindings: [
        LeaveBinding(),
      ],
    ),
    GetPage(
      name: applyLeaveScreen,
      page: () => ApplyLeaveScreen(),
      bindings: [
        ApplyLeaveBinding(),
      ],
    ),
    GetPage(
      name: applyLeaveFillScreen,
      page: () => ApplyLeaveFillScreen(),
      bindings: [
        ApplyLeaveFillBinding(),
      ],
    ),
    GetPage(
      name: feesScreen,
      page: () => FeesScreen(),
      bindings: [
        FeesBinding(),
      ],
    ),
    GetPage(
      name: feesOneScreen,
      page: () => FeesOneScreen(),
      bindings: [
        FeesOneBinding(),
      ],
    ),
    GetPage(
      name: paymentOneScreen,
      page: () => PaymentOneScreen(),
      bindings: [
        PaymentOneBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: homeWorkScreen,
      page: () => HomeWorkScreen(),
      bindings: [
        HomeWorkBinding(),
      ],
    ),
    GetPage(
      name: communityScreen,
      page: () => CommunityScreen(),
      bindings: [
        CommunityBinding(),
      ],
    ),
    GetPage(
      name: sportsDayScreen,
      page: () => SportsDayScreen(),
      bindings: [
        SportsDayBinding(),
      ],
    ),
    GetPage(
      name: noticeScreen,
      page: () => NoticeScreen(),
      bindings: [
        NoticeBinding(),
      ],
    ),
    GetPage(
      name: holidayAndVacationScreen,
      page: () => HolidayAndVacationScreen(),
      bindings: [
        HolidayAndVacationBinding(),
      ],
    ),
    GetPage(
      name: messageGroupsScreen,
      page: () => MessageGroupsScreen(),
      bindings: [
        MessageGroupsBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
