import '../../../core/app_export.dart';
import '../models/profile_page_notifications_model.dart';

/// A controller class for the ProfilePageNotificationsScreen.
///
/// This class manages the state of the ProfilePageNotificationsScreen, including the
/// current profilePageNotificationsModelObj
class ProfilePageNotificationsController extends GetxController {
  Rx<ProfilePageNotificationsModel> profilePageNotificationsModelObj =
      ProfilePageNotificationsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<bool> isSelectedSwitch3 = false.obs;

  Rx<bool> isSelectedSwitch4 = false.obs;
}
