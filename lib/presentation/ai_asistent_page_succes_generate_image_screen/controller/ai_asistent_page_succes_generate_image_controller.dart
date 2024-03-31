import '../../../core/app_export.dart';
import '../models/ai_asistent_page_succes_generate_image_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageSuccesGenerateImageScreen.
///
/// This class manages the state of the AiAsistentPageSuccesGenerateImageScreen, including the
/// current aiAsistentPageSuccesGenerateImageModelObj
class AiAsistentPageSuccesGenerateImageController extends GetxController {
  TextEditingController textController = TextEditingController();

  TextEditingController selectYourStyleController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageSuccesGenerateImageModel>
      aiAsistentPageSuccesGenerateImageModelObj =
      AiAsistentPageSuccesGenerateImageModel().obs;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    selectYourStyleController.dispose();
    playController.dispose();
  }
}
