import '../../../core/app_export.dart';
import '../models/ai_asistent_page_reach_js_start_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageReachJsStartScreen.
///
/// This class manages the state of the AiAsistentPageReachJsStartScreen, including the
/// current aiAsistentPageReachJsStartModelObj
class AiAsistentPageReachJsStartController extends GetxController {
  TextEditingController textController = TextEditingController();

  TextEditingController textController1 = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageReachJsStartModel> aiAsistentPageReachJsStartModelObj =
      AiAsistentPageReachJsStartModel().obs;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    textController1.dispose();
    playController.dispose();
  }
}
