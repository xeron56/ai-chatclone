import 'package:ai_chatclone/presentation/profile_page_chose_plan_actived_screen/controller/profile_page_chose_plan_actived_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilePageChosePlanActivedScreen.
///
/// This class ensures that the ProfilePageChosePlanActivedController is created when the
/// ProfilePageChosePlanActivedScreen is first loaded.
class ProfilePageChosePlanActivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePageChosePlanActivedController());
  }
}
