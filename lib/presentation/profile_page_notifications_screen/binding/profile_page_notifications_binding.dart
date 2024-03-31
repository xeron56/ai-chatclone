import 'package:ai_chatclone/presentation/profile_page_notifications_screen/controller/profile_page_notifications_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilePageNotificationsScreen.
///
/// This class ensures that the ProfilePageNotificationsController is created when the
/// ProfilePageNotificationsScreen is first loaded.
class ProfilePageNotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePageNotificationsController());
  }
}
