import 'package:ai_chatclone/presentation/payment_page_input_card_screen/controller/payment_page_input_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPageInputCardScreen.
///
/// This class ensures that the PaymentPageInputCardController is created when the
/// PaymentPageInputCardScreen is first loaded.
class PaymentPageInputCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPageInputCardController());
  }
}
