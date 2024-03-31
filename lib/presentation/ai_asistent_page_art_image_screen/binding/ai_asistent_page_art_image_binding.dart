import 'package:ai_chatclone/presentation/ai_asistent_page_art_image_screen/controller/ai_asistent_page_art_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageArtImageScreen.
///
/// This class ensures that the AiAsistentPageArtImageController is created when the
/// AiAsistentPageArtImageScreen is first loaded.
class AiAsistentPageArtImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageArtImageController());
  }
}
