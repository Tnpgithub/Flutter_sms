import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  // @override
  // void onClose() {
  //   super.onClose();
  //   firstNameController.dispose();
  //   lastNameController.dispose();
  //   phoneNumberController.dispose();
  //   emailController.dispose();
  // }
}
