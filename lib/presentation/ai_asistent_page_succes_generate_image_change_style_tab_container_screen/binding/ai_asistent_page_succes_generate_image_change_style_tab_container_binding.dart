import 'package:ai_chatclone/presentation/ai_asistent_page_succes_generate_image_change_style_tab_container_screen/controller/ai_asistent_page_succes_generate_image_change_style_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen.
///
/// This class ensures that the AiAsistentPageSuccesGenerateImageChangeStyleTabContainerController is created when the
/// AiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen is first loaded.
class AiAsistentPageSuccesGenerateImageChangeStyleTabContainerBinding
    extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>
        AiAsistentPageSuccesGenerateImageChangeStyleTabContainerController());
  }
}
