import 'package:student_app/core/app_export.dart';import 'package:student_app/presentation/payment_one_screen/models/payment_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the PaymentOneScreen.
///
/// This class manages the state of the PaymentOneScreen, including the
/// current paymentOneModelObj
class PaymentOneController extends GetxController {TextEditingController visapaynameoneController = TextEditingController();

Rx<PaymentOneModel> paymentOneModelObj = PaymentOneModel().obs;

@override void onClose() { super.onClose(); visapaynameoneController.dispose(); } 
 }
