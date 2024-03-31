import 'package:ai_chatclone/presentation/ai_asistent_page_reach_js_screen/controller/ai_asistent_page_reach_js_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageReachJsScreen.
///
/// This class ensures that the AiAsistentPageReachJsController is created when the
/// AiAsistentPageReachJsScreen is first loaded.
class AiAsistentPageReachJsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageReachJsController());
  }
}
