import 'package:ai_chatclone/presentation/profile_page_chose_plan_screen/controller/profile_page_chose_plan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilePageChosePlanScreen.
///
/// This class ensures that the ProfilePageChosePlanController is created when the
/// ProfilePageChosePlanScreen is first loaded.
class ProfilePageChosePlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePageChosePlanController());
  }
}
