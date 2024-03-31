import '../../../core/app_export.dart';
import '../models/ai_chat_page_screen_start_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiChatPageScreenStartDetailsScreen.
///
/// This class manages the state of the AiChatPageScreenStartDetailsScreen, including the
/// current aiChatPageScreenStartDetailsModelObj
class AiChatPageScreenStartDetailsController extends GetxController {
  TextEditingController helloAiController = TextEditingController();

  TextEditingController textController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiChatPageScreenStartDetailsModel> aiChatPageScreenStartDetailsModelObj =
      AiChatPageScreenStartDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    helloAiController.dispose();
    textController.dispose();
    playController.dispose();
  }
}
