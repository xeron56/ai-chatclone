import '../../../core/app_export.dart';
import '../models/ai_chat_page_screen_model.dart';

/// A controller class for the AiChatPageScreenPage.
///
/// This class manages the state of the AiChatPageScreenPage, including the
/// current aiChatPageScreenModelObj
class AiChatPageScreenController extends GetxController {
  AiChatPageScreenController(this.aiChatPageScreenModelObj);

  Rx<AiChatPageScreenModel> aiChatPageScreenModelObj;
}
