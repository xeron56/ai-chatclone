import '../../../core/app_export.dart';
import '../models/oneboarding_two_model.dart';

/// A controller class for the OneboardingTwoScreen.
///
/// This class manages the state of the OneboardingTwoScreen, including the
/// current oneboardingTwoModelObj
class OneboardingTwoController extends GetxController {
  Rx<OneboardingTwoModel> oneboardingTwoModelObj = OneboardingTwoModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
