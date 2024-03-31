import '../../../core/app_export.dart';
import '../models/payment_page_succesfully_paying_model.dart';

/// A controller class for the PaymentPageSuccesfullyPayingDialog.
///
/// This class manages the state of the PaymentPageSuccesfullyPayingDialog, including the
/// current paymentPageSuccesfullyPayingModelObj
class PaymentPageSuccesfullyPayingController extends GetxController {
  Rx<PaymentPageSuccesfullyPayingModel> paymentPageSuccesfullyPayingModelObj =
      PaymentPageSuccesfullyPayingModel().obs;
}
