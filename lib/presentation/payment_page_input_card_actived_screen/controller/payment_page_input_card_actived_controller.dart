import '../../../core/app_export.dart';
import '../models/payment_page_input_card_actived_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentPageInputCardActivedScreen.
///
/// This class manages the state of the PaymentPageInputCardActivedScreen, including the
/// current paymentPageInputCardActivedModelObj
class PaymentPageInputCardActivedController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  Rx<PaymentPageInputCardActivedModel> paymentPageInputCardActivedModelObj =
      PaymentPageInputCardActivedModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    dateController.dispose();
    zipcodeController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in paymentPageInputCardActivedModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    paymentPageInputCardActivedModelObj.value.dropdownItemList.refresh();
  }
}
