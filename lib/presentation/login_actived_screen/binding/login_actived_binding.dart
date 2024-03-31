import 'package:ai_chatclone/presentation/login_actived_screen/controller/login_actived_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginActivedScreen.
///
/// This class ensures that the LoginActivedController is created when the
/// LoginActivedScreen is first loaded.
class LoginActivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginActivedController());
  }
}
