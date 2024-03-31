import '../../../core/app_export.dart';
import '../models/ai_asistent_page_succes_generate_image_change_style_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageSuccesGenerateImageChangeStylePage.
///
/// This class manages the state of the AiAsistentPageSuccesGenerateImageChangeStylePage, including the
/// current aiAsistentPageSuccesGenerateImageChangeStyleModelObj
class AiAsistentPageSuccesGenerateImageChangeStyleController
    extends GetxController {
  AiAsistentPageSuccesGenerateImageChangeStyleController(
      this.aiAsistentPageSuccesGenerateImageChangeStyleModelObj);

  TextEditingController textController = TextEditingController();

  TextEditingController changeStyleController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageSuccesGenerateImageChangeStyleModel>
      aiAsistentPageSuccesGenerateImageChangeStyleModelObj;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    changeStyleController.dispose();
    playController.dispose();
  }
}
