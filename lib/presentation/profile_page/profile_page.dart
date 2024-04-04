import 'dart:convert';
import 'dart:typed_data';

import '../home_container_screen/controller/bottom_controller.dart';
import '../home_page/home_page.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_1.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String email = '';
  late String name = '';
  late String reg_no = '';
  late String school_id = '';
  late String school_name = '';
  late String standard_id = '';
  late String standard_name = '';
  late String student_code = '';
  late String student_id = '';
  late String photo = '';
  late String data = '';
  late String mobile = '';

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    final SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      email = spref.getString('email') ?? "blank";
      name = spref.getString("student_name") ?? "blank";
      reg_no = spref.getString("reg_no") ?? "blank";
      school_id = spref.getString("school_id") ?? "blank";
      school_name = spref.getString("school_name") ?? "blank";
      standard_id = spref.getString("standard_id") ?? "blank";
      standard_name = spref.getString("standard_name") ?? "blank";
      student_code = spref.getString("student_code") ?? "blank";
      student_id = spref.getString("student_id") ?? "blank";
      photo = spref.getString("photo") ?? "blank";
      mobile = spref.getString("mobile") ?? "mobile";
    });
  }

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    Uint8List data = base64Decode(photo);

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 22.v),
              decoration: AppDecoration.white,
              child: CustomAppBar(
                centerTitle: true,
                title: AppbarTitle(
                  text: "lbl_profile".tr,
                ),
                actions: [
                  AppbarImage1(
                    onTap: () {
                      Get.toNamed(AppRoutes.notificationsScreen);
                    },
                    svgPath: ImageConstant.imgNotification,
                    margin: EdgeInsets.fromLTRB(20.h, 6.v, 20.h, 3.v),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 32.v,
              ),
              child: Column(
                children: [
                  // CustomImageView(
                  //   imagePath: ImageConstant.imgEllipse225,
                  //   //  imagePath: Base64(),
                  //   height: 100.adaptSize,
                  //   width: 100.adaptSize,
                  //   radius: BorderRadius.circular(
                  //     50.h,
                  //   ),
                  // ),

                  ClipOval(
                    child: Container(
                      width: 100, // Specify the desired width
                      height: 100, // Specify the desired height
                      child: Image.memory(
                        data, // Uint8List representing the image data
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        repeat: ImageRepeat.repeat,
                        semanticLabel: 'Student Photo',
                      ),
                    ),
                  ),

                  SizedBox(height: 19.v),
                  Text(
                    name,
                    // "lbl_albert_copper".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    reg_no,
                    // "msg_7th_grade_b_section2".tr,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 21.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 23.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                //,
                                "Standard",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 19.v),
                              Text(
                                "School Name",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 18.v),
                              Text(
                                "Roll No",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 19.v),
                              Text(
                                "Email",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 19.v),
                              Text(
                                "Mobile",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 19.v),
                              Text(
                                "Student ID",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 19.v),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(standard_name
                                // style: theme.textTheme.bodyLarge,
                                ),
                            SizedBox(height: 20.v),
                            Text(
                              school_name,
                              //  style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 17.v),
                            Text(
                              reg_no,
                              //  style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 20.v),
                            Text(
                              email,
                              //  style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 17.v),
                            Text(
                              mobile,
                              //  style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 20.v),
                            Text(
                              student_id,
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 18.v),
                            // SizedBox(
                            //   width: 184.h,
                            //   child: Text(
                            //     "msg_1901_thornridge".tr,
                            //     maxLines: 2,
                            //     overflow: TextOverflow.ellipsis,
                            //     textAlign: TextAlign.right,
                            //     style: theme.textTheme.bodyLarge!.copyWith(
                            //       height: 1.50,
                            //     ),
                            //   ),
                            //),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.v),
                  GestureDetector(
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.h)),
                                  insetPadding:
                                      EdgeInsets.only(left: 16, right: 16),
                                  title: Padding(
                                    padding:
                                        EdgeInsets.only(left: 15, right: 15),
                                    child: Text(
                                        'Are you sure you want to Log Out ?',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.fSize,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.center),
                                  ),
                                  actions: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15.h),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color: theme.colorScheme
                                                            .primary,
                                                        width: 1.5,
                                                      )),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 14.h,
                                                        bottom: 14.h),
                                                    child: Center(
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          fontSize: 18.h.fSize,
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.h,
                                          ),
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                BottomBarController controller =
                                                    Get.find();

                                                PrefUtils.setLogin(true);
                                                controller.selectedIndex.value =
                                                    0;
                                                Get.toNamed(
                                                    AppRoutes.loginScreen);
                                                controller.onChange(HomePage());
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15.h),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.h),
                                                    color: theme
                                                        .colorScheme.primary,
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 14, bottom: 14),
                                                    child: Center(
                                                      child: Text(
                                                        'Yes',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18.fSize,
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red, // Choose your border color
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.white10, // Choose your border color
                          width: 1, // Choose your border width
                        ),
                      ),
                      child: Text(
                        "Log out",
                        style: TextStyle(color: Colors.white),
                        // CustomTextStyles.titleSmallRed70001,
                      ),
                    ),
                  ),
                  // child: Text(
                  //   // "lbl_log_out".tr,
                  //   "Log out1",
                  //   style: CustomTextStyles.titleSmallRed70001,
                  // ),
                  //  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Base64 extends StatelessWidget {
//   const Base64({super.key});

//   final String base64Image =
//       'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAABAAIDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2dScDlcU9wF3cW6jAdqZUOme9dvSWoAThSlJ2h2FAHaBScU9wB3cXaQHoAKHBA2gCkAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKAC';
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Image.memory(base64Decode(base64Image.split(',').last)),
//     );
//   }
// }
