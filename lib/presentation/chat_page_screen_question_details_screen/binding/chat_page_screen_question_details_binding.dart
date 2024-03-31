import 'package:ai_chatclone/presentation/chat_page_screen_question_details_screen/controller/chat_page_screen_question_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatPageScreenQuestionDetailsScreen.
///
/// This class ensures that the ChatPageScreenQuestionDetailsController is created when the
/// ChatPageScreenQuestionDetailsScreen is first loaded.
class ChatPageScreenQuestionDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatPageScreenQuestionDetailsController());
  }
}
