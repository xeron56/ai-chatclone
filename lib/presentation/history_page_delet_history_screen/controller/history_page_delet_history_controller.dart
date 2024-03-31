import '../../../core/app_export.dart';
import '../models/history_page_delet_history_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HistoryPageDeletHistoryScreen.
///
/// This class manages the state of the HistoryPageDeletHistoryScreen, including the
/// current historyPageDeletHistoryModelObj
class HistoryPageDeletHistoryController extends GetxController {
  TextEditingController mingcuteopenaifillController = TextEditingController();

  Rx<HistoryPageDeletHistoryModel> historyPageDeletHistoryModelObj =
      HistoryPageDeletHistoryModel().obs;

  @override
  void onClose() {
    super.onClose();
    mingcuteopenaifillController.dispose();
  }
}
