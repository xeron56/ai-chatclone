import '../../../core/app_export.dart';
import '../models/history_page_clear_all_model.dart';

/// A controller class for the HistoryPageClearAllBottomsheet.
///
/// This class manages the state of the HistoryPageClearAllBottomsheet, including the
/// current historyPageClearAllModelObj
class HistoryPageClearAllController extends GetxController {
  Rx<HistoryPageClearAllModel> historyPageClearAllModelObj =
      HistoryPageClearAllModel().obs;
}
