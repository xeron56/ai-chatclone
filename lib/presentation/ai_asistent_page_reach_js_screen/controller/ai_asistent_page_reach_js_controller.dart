import '../../../core/app_export.dart';
import '../models/ai_asistent_page_reach_js_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageReachJsScreen.
///
/// This class manages the state of the AiAsistentPageReachJsScreen, including the
/// current aiAsistentPageReachJsModelObj
class AiAsistentPageReachJsController extends GetxController {
  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageReachJsModel> aiAsistentPageReachJsModelObj =
      AiAsistentPageReachJsModel().obs;

  @override
  void onClose() {
    super.onClose();
    playController.dispose();
  }
}
