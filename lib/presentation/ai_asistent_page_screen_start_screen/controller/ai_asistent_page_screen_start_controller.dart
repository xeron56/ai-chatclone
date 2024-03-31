import '../../../core/app_export.dart';
import '../models/ai_asistent_page_screen_start_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageScreenStartScreen.
///
/// This class manages the state of the AiAsistentPageScreenStartScreen, including the
/// current aiAsistentPageScreenStartModelObj
class AiAsistentPageScreenStartController extends GetxController {
  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageScreenStartModel> aiAsistentPageScreenStartModelObj =
      AiAsistentPageScreenStartModel().obs;

  @override
  void onClose() {
    super.onClose();
    playController.dispose();
  }
}
