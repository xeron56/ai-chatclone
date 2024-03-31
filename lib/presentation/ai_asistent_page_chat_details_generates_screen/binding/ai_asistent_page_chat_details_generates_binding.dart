import 'package:ai_chatclone/presentation/ai_asistent_page_chat_details_generates_screen/controller/ai_asistent_page_chat_details_generates_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageChatDetailsGeneratesScreen.
///
/// This class ensures that the AiAsistentPageChatDetailsGeneratesController is created when the
/// AiAsistentPageChatDetailsGeneratesScreen is first loaded.
class AiAsistentPageChatDetailsGeneratesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageChatDetailsGeneratesController());
  }
}
