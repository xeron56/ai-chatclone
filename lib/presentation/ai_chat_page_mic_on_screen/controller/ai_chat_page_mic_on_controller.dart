import '../../../core/app_export.dart';
import '../models/ai_chat_page_mic_on_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiChatPageMicOnScreen.
///
/// This class manages the state of the AiChatPageMicOnScreen, including the
/// current aiChatPageMicOnModelObj
class AiChatPageMicOnController extends GetxController {
  TextEditingController helloAiController = TextEditingController();

  TextEditingController textController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  Rx<AiChatPageMicOnModel> aiChatPageMicOnModelObj = AiChatPageMicOnModel().obs;

  @override
  void onClose() {
    super.onClose();
    helloAiController.dispose();
    textController.dispose();
    editTextController.dispose();
  }
}
