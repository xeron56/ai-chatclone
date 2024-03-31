import '../../../core/app_export.dart';
import '../models/ai_asistent_page_screen_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageScreenTabContainerPage.
///
/// This class manages the state of the AiAsistentPageScreenTabContainerPage, including the
/// current aiAsistentPageScreenTabContainerModelObj
class AiAsistentPageScreenTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AiAsistentPageScreenTabContainerController(
      this.aiAsistentPageScreenTabContainerModelObj);

  Rx<AiAsistentPageScreenTabContainerModel>
      aiAsistentPageScreenTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}
