import 'package:ai_chatclone/presentation/payment_page_screen_actived_screen/controller/payment_page_screen_actived_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPageScreenActivedScreen.
///
/// This class ensures that the PaymentPageScreenActivedController is created when the
/// PaymentPageScreenActivedScreen is first loaded.
class PaymentPageScreenActivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPageScreenActivedController());
  }
}
