import 'package:ai_chatclone/presentation/chat_page_screen_chat_details_generate_screen/controller/chat_page_screen_chat_details_generate_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatPageScreenChatDetailsGenerateScreen.
///
/// This class ensures that the ChatPageScreenChatDetailsGenerateController is created when the
/// ChatPageScreenChatDetailsGenerateScreen is first loaded.
class ChatPageScreenChatDetailsGenerateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatPageScreenChatDetailsGenerateController());
  }
}
