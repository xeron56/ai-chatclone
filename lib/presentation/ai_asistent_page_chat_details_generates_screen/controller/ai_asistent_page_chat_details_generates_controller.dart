import '../../../core/app_export.dart';
import '../models/ai_asistent_page_chat_details_generates_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageChatDetailsGeneratesScreen.
///
/// This class manages the state of the AiAsistentPageChatDetailsGeneratesScreen, including the
/// current aiAsistentPageChatDetailsGeneratesModelObj
class AiAsistentPageChatDetailsGeneratesController extends GetxController {
  TextEditingController helloAiController = TextEditingController();

  TextEditingController textController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageChatDetailsGeneratesModel>
      aiAsistentPageChatDetailsGeneratesModelObj =
      AiAsistentPageChatDetailsGeneratesModel().obs;

  @override
  void onClose() {
    super.onClose();
    helloAiController.dispose();
    textController.dispose();
    playController.dispose();
  }
}
