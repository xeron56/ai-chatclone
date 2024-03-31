import 'package:ai_chatclone/presentation/icons_screen/controller/icons_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IconsScreen.
///
/// This class ensures that the IconsController is created when the
/// IconsScreen is first loaded.
class IconsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IconsController());
  }
}
