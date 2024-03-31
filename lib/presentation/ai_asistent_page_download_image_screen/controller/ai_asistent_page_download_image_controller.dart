import '../../../core/app_export.dart';
import '../models/ai_asistent_page_download_image_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageDownloadImageScreen.
///
/// This class manages the state of the AiAsistentPageDownloadImageScreen, including the
/// current aiAsistentPageDownloadImageModelObj
class AiAsistentPageDownloadImageController extends GetxController {
  TextEditingController textController = TextEditingController();

  TextEditingController selectYourStyleController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageDownloadImageModel> aiAsistentPageDownloadImageModelObj =
      AiAsistentPageDownloadImageModel().obs;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    selectYourStyleController.dispose();
    playController.dispose();
  }
}
