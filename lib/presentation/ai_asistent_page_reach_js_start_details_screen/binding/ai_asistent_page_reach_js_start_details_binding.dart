import 'package:ai_chatclone/presentation/ai_asistent_page_reach_js_start_details_screen/controller/ai_asistent_page_reach_js_start_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageReachJsStartDetailsScreen.
///
/// This class ensures that the AiAsistentPageReachJsStartDetailsController is created when the
/// AiAsistentPageReachJsStartDetailsScreen is first loaded.
class AiAsistentPageReachJsStartDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageReachJsStartDetailsController());
  }
}
