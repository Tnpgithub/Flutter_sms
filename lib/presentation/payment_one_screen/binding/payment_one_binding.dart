import '../controller/payment_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentOneScreen.
///
/// This class ensures that the PaymentOneController is created when the
/// PaymentOneScreen is first loaded.
class PaymentOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentOneController());
  }
}
