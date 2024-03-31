import '../../../core/app_export.dart';
import '../models/ai_chat_page_screen_start_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiChatPageScreenStartScreen.
///
/// This class manages the state of the AiChatPageScreenStartScreen, including the
/// current aiChatPageScreenStartModelObj
class AiChatPageScreenStartController extends GetxController {
  TextEditingController playController = TextEditingController();

  Rx<AiChatPageScreenStartModel> aiChatPageScreenStartModelObj =
      AiChatPageScreenStartModel().obs;

  @override
  void onClose() {
    super.onClose();
    playController.dispose();
  }
}
