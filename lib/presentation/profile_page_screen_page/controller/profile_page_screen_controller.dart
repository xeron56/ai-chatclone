import '../../../core/app_export.dart';
import '../models/profile_page_screen_model.dart';

/// A controller class for the ProfilePageScreenPage.
///
/// This class manages the state of the ProfilePageScreenPage, including the
/// current profilePageScreenModelObj
class ProfilePageScreenController extends GetxController {
  ProfilePageScreenController(this.profilePageScreenModelObj);

  Rx<ProfilePageScreenModel> profilePageScreenModelObj;
}
