import 'package:ai_chatclone/presentation/oneboarding_two_screen/controller/oneboarding_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OneboardingTwoScreen.
///
/// This class ensures that the OneboardingTwoController is created when the
/// OneboardingTwoScreen is first loaded.
class OneboardingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OneboardingTwoController());
  }
}
