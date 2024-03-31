import 'package:ai_chatclone/presentation/history_page_details_screen/controller/history_page_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryPageDetailsScreen.
///
/// This class ensures that the HistoryPageDetailsController is created when the
/// HistoryPageDetailsScreen is first loaded.
class HistoryPageDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryPageDetailsController());
  }
}
