import '../../../core/app_export.dart';
import '../models/otp_verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the OtpVerificationScreen.
///
/// This class manages the state of the OtpVerificationScreen, including the
/// current otpVerificationModelObj
class OtpVerificationController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<OtpVerificationModel> otpVerificationModelObj = OtpVerificationModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
