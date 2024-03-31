import 'package:ai_chatclone/presentation/ai_asistent_page_succes_generate_image_screen/controller/ai_asistent_page_succes_generate_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageSuccesGenerateImageScreen.
///
/// This class ensures that the AiAsistentPageSuccesGenerateImageController is created when the
/// AiAsistentPageSuccesGenerateImageScreen is first loaded.
class AiAsistentPageSuccesGenerateImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageSuccesGenerateImageController());
  }
}
