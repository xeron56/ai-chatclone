import '../../../core/app_export.dart';
import '../models/ai_asistent_page_screen_model.dart';

/// A controller class for the AiAsistentPageScreenPage.
///
/// This class manages the state of the AiAsistentPageScreenPage, including the
/// current aiAsistentPageScreenModelObj
class AiAsistentPageScreenController extends GetxController {
  AiAsistentPageScreenController(this.aiAsistentPageScreenModelObj);

  Rx<AiAsistentPageScreenModel> aiAsistentPageScreenModelObj;
}
