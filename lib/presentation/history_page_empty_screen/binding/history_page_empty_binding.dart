import 'package:ai_chatclone/presentation/history_page_empty_screen/controller/history_page_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryPageEmptyScreen.
///
/// This class ensures that the HistoryPageEmptyController is created when the
/// HistoryPageEmptyScreen is first loaded.
class HistoryPageEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryPageEmptyController());
  }
}
