import '../../../core/app_export.dart';
import '../models/ai_asistent_page_art_image_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageArtImageScreen.
///
/// This class manages the state of the AiAsistentPageArtImageScreen, including the
/// current aiAsistentPageArtImageModelObj
class AiAsistentPageArtImageController extends GetxController {
  TextEditingController textController = TextEditingController();

  TextEditingController startwithpopularaesthetichighaController =
      TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageArtImageModel> aiAsistentPageArtImageModelObj =
      AiAsistentPageArtImageModel().obs;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    startwithpopularaesthetichighaController.dispose();
    playController.dispose();
  }
}
