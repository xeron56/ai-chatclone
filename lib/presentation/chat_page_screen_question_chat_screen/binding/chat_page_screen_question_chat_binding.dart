import 'package:ai_chatclone/presentation/chat_page_screen_question_chat_screen/controller/chat_page_screen_question_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatPageScreenQuestionChatScreen.
///
/// This class ensures that the ChatPageScreenQuestionChatController is created when the
/// ChatPageScreenQuestionChatScreen is first loaded.
class ChatPageScreenQuestionChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatPageScreenQuestionChatController());
  }
}
