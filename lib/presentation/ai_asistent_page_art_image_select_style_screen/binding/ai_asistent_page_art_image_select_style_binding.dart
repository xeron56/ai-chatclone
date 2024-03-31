import 'package:ai_chatclone/presentation/ai_asistent_page_art_image_select_style_screen/controller/ai_asistent_page_art_image_select_style_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageArtImageSelectStyleScreen.
///
/// This class ensures that the AiAsistentPageArtImageSelectStyleController is created when the
/// AiAsistentPageArtImageSelectStyleScreen is first loaded.
class AiAsistentPageArtImageSelectStyleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageArtImageSelectStyleController());
  }
}
