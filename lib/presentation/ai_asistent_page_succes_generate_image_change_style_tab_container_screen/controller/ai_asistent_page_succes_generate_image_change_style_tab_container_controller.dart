import '../../../core/app_export.dart';
import '../models/ai_asistent_page_succes_generate_image_change_style_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen.
///
/// This class manages the state of the AiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen, including the
/// current aiAsistentPageSuccesGenerateImageChangeStyleTabContainerModelObj
class AiAsistentPageSuccesGenerateImageChangeStyleTabContainerController
    extends GetxController with GetSingleTickerProviderStateMixin {
  TextEditingController textController = TextEditingController();

  TextEditingController selectYourStyleController = TextEditingController();

  Rx<AiAsistentPageSuccesGenerateImageChangeStyleTabContainerModel>
      aiAsistentPageSuccesGenerateImageChangeStyleTabContainerModelObj =
      AiAsistentPageSuccesGenerateImageChangeStyleTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    selectYourStyleController.dispose();
  }
}
