import '../../../core/app_export.dart';
import '../models/ai_asistent_page_art_image_start_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageArtImageStartScreen.
///
/// This class manages the state of the AiAsistentPageArtImageStartScreen, including the
/// current aiAsistentPageArtImageStartModelObj
class AiAsistentPageArtImageStartController extends GetxController {
  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageArtImageStartModel> aiAsistentPageArtImageStartModelObj =
      AiAsistentPageArtImageStartModel().obs;

  @override
  void onClose() {
    super.onClose();
    playController.dispose();
  }
}
