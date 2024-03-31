import '../../../core/app_export.dart';
import '../models/chat_page_screen_chat_details_generate_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatPageScreenChatDetailsGenerateScreen.
///
/// This class manages the state of the ChatPageScreenChatDetailsGenerateScreen, including the
/// current chatPageScreenChatDetailsGenerateModelObj
class ChatPageScreenChatDetailsGenerateController extends GetxController {
  TextEditingController helloAiController = TextEditingController();

  TextEditingController textController = TextEditingController();

  TextEditingController greatController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<ChatPageScreenChatDetailsGenerateModel>
      chatPageScreenChatDetailsGenerateModelObj =
      ChatPageScreenChatDetailsGenerateModel().obs;

  @override
  void onClose() {
    super.onClose();
    helloAiController.dispose();
    textController.dispose();
    greatController.dispose();
    playController.dispose();
  }
}
