import 'package:ai_chatclone/presentation/oneboarding_one_screen/controller/oneboarding_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OneboardingOneScreen.
///
/// This class ensures that the OneboardingOneController is created when the
/// OneboardingOneScreen is first loaded.
class OneboardingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OneboardingOneController());
  }
}
