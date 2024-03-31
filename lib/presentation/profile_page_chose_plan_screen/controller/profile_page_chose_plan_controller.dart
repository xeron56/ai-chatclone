import '../../../core/app_export.dart';
import '../models/profile_page_chose_plan_model.dart';

/// A controller class for the ProfilePageChosePlanScreen.
///
/// This class manages the state of the ProfilePageChosePlanScreen, including the
/// current profilePageChosePlanModelObj
class ProfilePageChosePlanController extends GetxController {
  Rx<ProfilePageChosePlanModel> profilePageChosePlanModelObj =
      ProfilePageChosePlanModel().obs;
}
