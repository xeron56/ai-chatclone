import 'package:ai_chatclone/presentation/ai_chat_page_screen_start_screen/controller/ai_chat_page_screen_start_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiChatPageScreenStartScreen.
///
/// This class ensures that the AiChatPageScreenStartController is created when the
/// AiChatPageScreenStartScreen is first loaded.
class AiChatPageScreenStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiChatPageScreenStartController());
  }
}
