import 'package:ai_chatclone/presentation/ai_chat_page_screen_container_screen/controller/ai_chat_page_screen_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiChatPageScreenContainerScreen.
///
/// This class ensures that the AiChatPageScreenContainerController is created when the
/// AiChatPageScreenContainerScreen is first loaded.
class AiChatPageScreenContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiChatPageScreenContainerController());
  }
}
