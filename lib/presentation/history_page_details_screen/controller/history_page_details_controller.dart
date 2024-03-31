import '../../../core/app_export.dart';
import '../models/history_page_details_model.dart';

/// A controller class for the HistoryPageDetailsScreen.
///
/// This class manages the state of the HistoryPageDetailsScreen, including the
/// current historyPageDetailsModelObj
class HistoryPageDetailsController extends GetxController {
  Rx<HistoryPageDetailsModel> historyPageDetailsModelObj =
      HistoryPageDetailsModel().obs;
}
