import '../../../core/app_export.dart';
import '../models/payment_page_screen_actived_model.dart';

/// A controller class for the PaymentPageScreenActivedScreen.
///
/// This class manages the state of the PaymentPageScreenActivedScreen, including the
/// current paymentPageScreenActivedModelObj
class PaymentPageScreenActivedController extends GetxController {
  Rx<PaymentPageScreenActivedModel> paymentPageScreenActivedModelObj =
      PaymentPageScreenActivedModel().obs;
}
