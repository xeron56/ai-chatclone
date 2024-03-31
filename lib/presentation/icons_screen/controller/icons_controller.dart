import '../../../core/app_export.dart';
import '../models/icons_model.dart';

/// A controller class for the IconsScreen.
///
/// This class manages the state of the IconsScreen, including the
/// current iconsModelObj
class IconsController extends GetxController {
  Rx<IconsModel> iconsModelObj = IconsModel().obs;
}
