import 'package:ai_chatclone/presentation/ai_asistent_page_download_image_screen/controller/ai_asistent_page_download_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageDownloadImageScreen.
///
/// This class ensures that the AiAsistentPageDownloadImageController is created when the
/// AiAsistentPageDownloadImageScreen is first loaded.
class AiAsistentPageDownloadImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageDownloadImageController());
  }
}
