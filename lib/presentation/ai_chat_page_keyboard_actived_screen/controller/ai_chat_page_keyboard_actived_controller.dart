import '../../../core/app_export.dart';
import '../models/ai_chat_page_keyboard_actived_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiChatPageKeyboardActivedScreen.
///
/// This class manages the state of the AiChatPageKeyboardActivedScreen, including the
/// current aiChatPageKeyboardActivedModelObj
class AiChatPageKeyboardActivedController extends GetxController {
  TextEditingController helloAiController = TextEditingController();

  TextEditingController textController = TextEditingController();

  Rx<AiChatPageKeyboardActivedModel> aiChatPageKeyboardActivedModelObj =
      AiChatPageKeyboardActivedModel().obs;

  @override
  void onClose() {
    super.onClose();
    helloAiController.dispose();
    textController.dispose();
  }
}
