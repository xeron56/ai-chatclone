import '../../../core/app_export.dart';
import '../models/ai_asistent_page_art_image_select_style_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageArtImageSelectStyleScreen.
///
/// This class manages the state of the AiAsistentPageArtImageSelectStyleScreen, including the
/// current aiAsistentPageArtImageSelectStyleModelObj
class AiAsistentPageArtImageSelectStyleController extends GetxController {
  TextEditingController textController = TextEditingController();

  TextEditingController selectYourStyleController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageArtImageSelectStyleModel>
      aiAsistentPageArtImageSelectStyleModelObj =
      AiAsistentPageArtImageSelectStyleModel().obs;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    selectYourStyleController.dispose();
    playController.dispose();
  }
}
