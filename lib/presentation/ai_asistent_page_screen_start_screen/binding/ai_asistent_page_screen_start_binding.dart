import 'package:ai_chatclone/presentation/ai_asistent_page_screen_start_screen/controller/ai_asistent_page_screen_start_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageScreenStartScreen.
///
/// This class ensures that the AiAsistentPageScreenStartController is created when the
/// AiAsistentPageScreenStartScreen is first loaded.
class AiAsistentPageScreenStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageScreenStartController());
  }
}
