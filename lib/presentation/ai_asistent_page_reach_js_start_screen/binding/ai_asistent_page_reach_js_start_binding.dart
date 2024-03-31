import 'package:ai_chatclone/presentation/ai_asistent_page_reach_js_start_screen/controller/ai_asistent_page_reach_js_start_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageReachJsStartScreen.
///
/// This class ensures that the AiAsistentPageReachJsStartController is created when the
/// AiAsistentPageReachJsStartScreen is first loaded.
class AiAsistentPageReachJsStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageReachJsStartController());
  }
}
