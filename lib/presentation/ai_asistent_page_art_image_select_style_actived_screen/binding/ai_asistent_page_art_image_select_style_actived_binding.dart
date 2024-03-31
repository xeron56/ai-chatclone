import 'package:ai_chatclone/presentation/ai_asistent_page_art_image_select_style_actived_screen/controller/ai_asistent_page_art_image_select_style_actived_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageArtImageSelectStyleActivedScreen.
///
/// This class ensures that the AiAsistentPageArtImageSelectStyleActivedController is created when the
/// AiAsistentPageArtImageSelectStyleActivedScreen is first loaded.
class AiAsistentPageArtImageSelectStyleActivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageArtImageSelectStyleActivedController());
  }
}
