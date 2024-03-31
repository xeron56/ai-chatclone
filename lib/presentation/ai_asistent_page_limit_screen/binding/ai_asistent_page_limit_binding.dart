import 'package:ai_chatclone/presentation/ai_asistent_page_limit_screen/controller/ai_asistent_page_limit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageLimitScreen.
///
/// This class ensures that the AiAsistentPageLimitController is created when the
/// AiAsistentPageLimitScreen is first loaded.
class AiAsistentPageLimitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageLimitController());
  }
}
