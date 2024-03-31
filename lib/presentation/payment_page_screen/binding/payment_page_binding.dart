import 'package:ai_chatclone/presentation/payment_page_screen/controller/payment_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPageScreen.
///
/// This class ensures that the PaymentPageController is created when the
/// PaymentPageScreen is first loaded.
class PaymentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPageController());
  }
}
