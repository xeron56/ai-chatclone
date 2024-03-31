import '../../../core/app_export.dart';
import '../models/profile_page_chose_plan_actived_model.dart';

/// A controller class for the ProfilePageChosePlanActivedScreen.
///
/// This class manages the state of the ProfilePageChosePlanActivedScreen, including the
/// current profilePageChosePlanActivedModelObj
class ProfilePageChosePlanActivedController extends GetxController {
  Rx<ProfilePageChosePlanActivedModel> profilePageChosePlanActivedModelObj =
      ProfilePageChosePlanActivedModel().obs;
}
