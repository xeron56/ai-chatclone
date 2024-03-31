import 'package:ai_chatclone/presentation/ai_asistent_page_art_image_start_screen/controller/ai_asistent_page_art_image_start_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageArtImageStartScreen.
///
/// This class ensures that the AiAsistentPageArtImageStartController is created when the
/// AiAsistentPageArtImageStartScreen is first loaded.
class AiAsistentPageArtImageStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageArtImageStartController());
  }
}
