import 'package:ai_chatclone/presentation/otp_verification_screen/controller/otp_verification_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OtpVerificationScreen.
///
/// This class ensures that the OtpVerificationController is created when the
/// OtpVerificationScreen is first loaded.
class OtpVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpVerificationController());
  }
}
