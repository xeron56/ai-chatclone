import '../../../core/app_export.dart';
import '../models/oneboarding_one_model.dart';

/// A controller class for the OneboardingOneScreen.
///
/// This class manages the state of the OneboardingOneScreen, including the
/// current oneboardingOneModelObj
class OneboardingOneController extends GetxController {
  Rx<OneboardingOneModel> oneboardingOneModelObj = OneboardingOneModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
