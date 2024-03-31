import '../../../core/app_export.dart';
import '../models/ai_asistent_page_reach_js_start_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageReachJsStartDetailsScreen.
///
/// This class manages the state of the AiAsistentPageReachJsStartDetailsScreen, including the
/// current aiAsistentPageReachJsStartDetailsModelObj
class AiAsistentPageReachJsStartDetailsController extends GetxController {
  TextEditingController textController = TextEditingController();

  TextEditingController textController1 = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageReachJsStartDetailsModel>
      aiAsistentPageReachJsStartDetailsModelObj =
      AiAsistentPageReachJsStartDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    textController1.dispose();
    playController.dispose();
  }
}
