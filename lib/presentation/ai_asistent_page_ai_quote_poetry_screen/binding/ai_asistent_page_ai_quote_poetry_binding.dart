import 'package:ai_chatclone/presentation/ai_asistent_page_ai_quote_poetry_screen/controller/ai_asistent_page_ai_quote_poetry_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AiAsistentPageAiQuotePoetryScreen.
///
/// This class ensures that the AiAsistentPageAiQuotePoetryController is created when the
/// AiAsistentPageAiQuotePoetryScreen is first loaded.
class AiAsistentPageAiQuotePoetryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAsistentPageAiQuotePoetryController());
  }
}
