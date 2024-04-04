import '../../widgets/custom_appBar.dart';
import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:student_app/core/constants/constants.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/core/utils/validation_functions.dart';
import 'package:student_app/widgets/custom_elevated_button.dart';
import 'package:student_app/widgets/custom_icon_button.dart';
import 'package:student_app/widgets/custom_text_form_field.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        PrefUtils.closeApp();
        return false;
      },
      child: Scaffold(
          appBar: customAppBarSecond(
            appBarColor: Colors.transparent,
            height: 0,
          ),
          // resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 45.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 2.v, right: 49.h),
                              child: Row(children: [
                                CustomIconButton(
                                    height: 100.v,
                                    width: 100.h,
                                    padding: EdgeInsets.all(13.h),
                                    decoration:
                                        IconButtonStyleHelper.outlinePrimary,
                                //    child: CustomImageView(
                                  //      svgPath: ImageConstant.imgAirplane)),
					child: Image.asset('assets/images/splash_screen.png',
				                    height: 280,
                   				 width: 280,
					),
					),
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.h, top: 6.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_log_in".tr,
                                                  style: theme.textTheme
                                                      .headlineMedium),
                                              SizedBox(height: 7.v),
                                              Text("msg_hello_welcome_back".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge)
                                            ])))
                              ])),
                          SizedBox(height: 21.v),
                          CustomTextFormField(
                            autofocus: false,
                            contentPadding:
                                const EdgeInsets.only(bottom: 14.0, top: 14.0),
                            prefix: const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                            ),
                            textInputAction: TextInputAction.next,
                            controller: controller.emailController,
                            hintText: "msg_enter_email_address".tr,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            },
                            // contentPadding: EdgeInsets.symmetric(
                            //     horizontal: 0.h, vertical: 17.v)
                          ),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                              autofocus: false,
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 16.h, 15.v),
                                    child: CustomImageView(
                                        imagePath:
                                            controller.isShowPassword.value
                                                ? ImageConstant.eyesfill
                                                : ImageConstant.eyesOpen),
                                  )),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 54.v),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              // prefix: Container(
                              //   width: 5.h,
                              // ),
                              obscureText: controller.isShowPassword.value,
                              contentPadding: EdgeInsets.only(
                                  left: 0.h, top: 16.v, bottom: 16.v),
                              // borderDecoration: TextFormFieldStyleHelper.custom,
                              filled: false),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Text("msg_forgot_password".tr,
                                      style:
                                          theme.textTheme.bodyLarge!.copyWith(
                                        fontSize: 16.fSize,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      )))),
                          SizedBox(height: 54.v),
                          CustomElevatedButton(
                            text: "lbl_log_in".tr,
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                PrefUtils.setLogin(false);

                                var rs = await Login();
                                if (rs == 1) {
                                  homeLogin();
                                  controller.passwordController.clear();
                                  controller.emailController.clear();
                                } else {
                                  print("Wrong Creds");
                                  showLoginFailedSnackBar(context);
                                }
                              } else {
                                print("not valid");
                              }
                            },
                          ),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount();
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_don_t_have_an_account2".tr,
                                            style: theme.textTheme.bodyLarge),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .titleMediumNunitoSansPrimary)
                                      ]),
                                      textAlign: TextAlign.left)))
                        ]))),
          )),
    );
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the forgotPasswordScreen.
  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  homeLogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signUpScreen.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  Future<int> Login() async {
    print('Textbox Value: ${controller.emailController.text}');
    print('Textbox Value: ${controller.passwordController.text}');
    var user = controller.emailController.text;
    var pass = controller.passwordController.text;
    print('inside fn $user  $pass');
    var params = {
      "username": user,
      "password": pass,
    };

    print(Constants.base_url + 'login');
    print(Constants.base_url + Constants.endpoint_login);
    final http.Response result = await http.post(
        Uri.parse(Constants.base_url + Constants.endpoint_login),
        body: params);

    var body = result.body;
    print(body);

    if (result.statusCode == 200) {
      final jsonResponse = json.decode(result.body);
      final data = jsonResponse;

      // Successful login, handle response
      final SharedPreferences spref = await SharedPreferences.getInstance();
      spref.setString('email', data["email"]);
      spref.setString('student_name', data["name"]);
      spref.setString('reg_no', data["reg_code"]);
      spref.setString('school_id', data["school_id"].toString());
      spref.setString('school_name', data["school_name"]);
      spref.setString('standard_id', data["standard_id"].toString());
      spref.setString('standard_name', data["standard_name"]);
      spref.setString('student_code', data["student_code"].toString());
      spref.setString('student_id', data["student_id"].toString());
      spref.setString('token', data["token"].toString());
      spref.setString('photo', data["photo"].toString());
      spref.setString('mobile', data["mobile"].toString());
      spref.setString('gender', data["gender"].toString());
      // spref.setString('photo', data["photo"].toString());
      // spref.setString('photo', data["photo"].toString());
      // spref.setString('photo', data["photo"].toString());

      print('Login Successful: $jsonResponse');
      return 1;
    } else {
      // Failed login, handle error
      print('Login Failed: ${result.statusCode}');
      return 0;
    }

//	var data = jsonDecode(body);
//	print('response ${result.body}, data $data');
//    if (data['status'] == "successful") {
//      final spref = await SharedPreferences.getInstance();
//      spref.setString('loginId', data["login_id"]);
//      spref.setString('reg_no', data["reg_no"]);
//      spref.setString('name', data["name"]);
//      spref.setString('department', data["department"]);
//      spref.setString('sem', data["sem"]);
//      spref.setString('email', data["email"]);
//      spref.setString('mobile', data["mobile"]);

//      Navigator.pushReplacement(
//          context, MaterialPageRoute(builder: (context) => Home()));
//    } else {
    //    Fluttertoast.showToast(msg: 'login failed');

    //}
  }

  void showLoginFailedSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Login failed. Please check your credentials.'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
