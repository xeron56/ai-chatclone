import 'package:ai_chatclone/presentation/ai_chat_page_screen_start_details_screen/controller/ai_chat_page_screen_start_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiChatPageScreenStartDetailsScreen.
///
/// This class ensures that the AiChatPageScreenStartDetailsController is created when the
/// AiChatPageScreenStartDetailsScreen is first loaded.
class AiChatPageScreenStartDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiChatPageScreenStartDetailsController());
  }
}
