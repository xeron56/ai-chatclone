import 'package:ai_chatclone/presentation/oneboarding_screen/controller/oneboarding_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OneboardingScreen.
///
/// This class ensures that the OneboardingController is created when the
/// OneboardingScreen is first loaded.
class OneboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OneboardingController());
  }
}
