import '../../../core/app_export.dart';
import '../models/chat_page_screen_question_chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatPageScreenQuestionChatScreen.
///
/// This class manages the state of the ChatPageScreenQuestionChatScreen, including the
/// current chatPageScreenQuestionChatModelObj
class ChatPageScreenQuestionChatController extends GetxController {
  TextEditingController helloAiController = TextEditingController();

  TextEditingController textController = TextEditingController();

  TextEditingController okeSureController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<ChatPageScreenQuestionChatModel> chatPageScreenQuestionChatModelObj =
      ChatPageScreenQuestionChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    helloAiController.dispose();
    textController.dispose();
    okeSureController.dispose();
    playController.dispose();
  }
}
