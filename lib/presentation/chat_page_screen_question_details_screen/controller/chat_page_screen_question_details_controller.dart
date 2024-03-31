import '../../../core/app_export.dart';
import '../models/chat_page_screen_question_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatPageScreenQuestionDetailsScreen.
///
/// This class manages the state of the ChatPageScreenQuestionDetailsScreen, including the
/// current chatPageScreenQuestionDetailsModelObj
class ChatPageScreenQuestionDetailsController extends GetxController {
  TextEditingController helloAiController = TextEditingController();

  TextEditingController textController = TextEditingController();

  TextEditingController okeSureController = TextEditingController();

  TextEditingController thaksAiLoveyouController = TextEditingController();

  TextEditingController playController = TextEditingController();

  Rx<ChatPageScreenQuestionDetailsModel> chatPageScreenQuestionDetailsModelObj =
      ChatPageScreenQuestionDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    helloAiController.dispose();
    textController.dispose();
    okeSureController.dispose();
    thaksAiLoveyouController.dispose();
    playController.dispose();
  }
}
