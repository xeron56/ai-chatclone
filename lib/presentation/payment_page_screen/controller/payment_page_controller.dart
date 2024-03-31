import '../../../core/app_export.dart';
import '../models/payment_page_model.dart';

/// A controller class for the PaymentPageScreen.
///
/// This class manages the state of the PaymentPageScreen, including the
/// current paymentPageModelObj
class PaymentPageController extends GetxController {
  Rx<PaymentPageModel> paymentPageModelObj = PaymentPageModel().obs;
}
