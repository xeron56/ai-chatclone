import '../../../core/app_export.dart';
import '../models/ai_asistent_page_ai_quote_poetry_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageAiQuotePoetryScreen.
///
/// This class manages the state of the AiAsistentPageAiQuotePoetryScreen, including the
/// current aiAsistentPageAiQuotePoetryModelObj
class AiAsistentPageAiQuotePoetryController extends GetxController {
  TextEditingController playController = TextEditingController();

  Rx<AiAsistentPageAiQuotePoetryModel> aiAsistentPageAiQuotePoetryModelObj =
      AiAsistentPageAiQuotePoetryModel().obs;

  @override
  void onClose() {
    super.onClose();
    playController.dispose();
  }
}
