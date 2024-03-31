import '../../../core/app_export.dart';
import '../models/payment_page_input_card_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentPageInputCardScreen.
///
/// This class manages the state of the PaymentPageInputCardScreen, including the
/// current paymentPageInputCardModelObj
class PaymentPageInputCardController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  Rx<PaymentPageInputCardModel> paymentPageInputCardModelObj =
      PaymentPageInputCardModel().obs;

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
        in paymentPageInputCardModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    paymentPageInputCardModelObj.value.dropdownItemList.refresh();
  }
}
