import '../../../core/app_export.dart';
import '../models/ai_asistent_page_limit_model.dart';

/// A controller class for the AiAsistentPageLimitScreen.
///
/// This class manages the state of the AiAsistentPageLimitScreen, including the
/// current aiAsistentPageLimitModelObj
class AiAsistentPageLimitController extends GetxController {
  Rx<AiAsistentPageLimitModel> aiAsistentPageLimitModelObj =
      AiAsistentPageLimitModel().obs;
}
