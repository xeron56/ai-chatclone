import '../../../core/app_export.dart';
import '../models/history_page_empty_model.dart';

/// A controller class for the HistoryPageEmptyScreen.
///
/// This class manages the state of the HistoryPageEmptyScreen, including the
/// current historyPageEmptyModelObj
class HistoryPageEmptyController extends GetxController {
  Rx<HistoryPageEmptyModel> historyPageEmptyModelObj =
      HistoryPageEmptyModel().obs;
}
