import '../../../core/app_export.dart';
import '../models/ai_asistent_page_art_image_select_style_actived_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageArtImageSelectStyleActivedScreen.
///
/// This class manages the state of the AiAsistentPageArtImageSelectStyleActivedScreen, including the
/// current aiAsistentPageArtImageSelectStyleActivedModelObj
class AiAsistentPageArtImageSelectStyleActivedController
    extends GetxController {
  TextEditingController textController = TextEditingController();

  TextEditingController selectYourStyleController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageArtImageSelectStyleActivedModel>
      aiAsistentPageArtImageSelectStyleActivedModelObj =
      AiAsistentPageArtImageSelectStyleActivedModel().obs;

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    selectYourStyleController.dispose();
    playController.dispose();
  }
}
