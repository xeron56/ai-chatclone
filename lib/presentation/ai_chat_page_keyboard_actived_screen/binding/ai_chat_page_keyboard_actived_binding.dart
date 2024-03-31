import 'package:ai_chatclone/presentation/ai_chat_page_keyboard_actived_screen/controller/ai_chat_page_keyboard_actived_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiChatPageKeyboardActivedScreen.
///
/// This class ensures that the AiChatPageKeyboardActivedController is created when the
/// AiChatPageKeyboardActivedScreen is first loaded.
class AiChatPageKeyboardActivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiChatPageKeyboardActivedController());
  }
}
