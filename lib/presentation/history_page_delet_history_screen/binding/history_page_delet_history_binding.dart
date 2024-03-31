import 'package:ai_chatclone/presentation/history_page_delet_history_screen/controller/history_page_delet_history_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryPageDeletHistoryScreen.
///
/// This class ensures that the HistoryPageDeletHistoryController is created when the
/// HistoryPageDeletHistoryScreen is first loaded.
class HistoryPageDeletHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryPageDeletHistoryController());
  }
}
