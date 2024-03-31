import 'package:ai_chatclone/presentation/ai_chat_page_mic_on_screen/controller/ai_chat_page_mic_on_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiChatPageMicOnScreen.
///
/// This class ensures that the AiChatPageMicOnController is created when the
/// AiChatPageMicOnScreen is first loaded.
class AiChatPageMicOnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiChatPageMicOnController());
  }
}
