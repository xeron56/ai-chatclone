import 'package:ai_chatclone/presentation/payment_page_input_card_actived_screen/controller/payment_page_input_card_actived_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPageInputCardActivedScreen.
///
/// This class ensures that the PaymentPageInputCardActivedController is created when the
/// PaymentPageInputCardActivedScreen is first loaded.
class PaymentPageInputCardActivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPageInputCardActivedController());
  }
}
