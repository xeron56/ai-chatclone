import '../../../core/app_export.dart';import '../models/oneboarding_model.dart';/// A controller class for the OneboardingScreen.
///
/// This class manages the state of the OneboardingScreen, including the
/// current oneboardingModelObj
class OneboardingController extends GetxController {Rx<OneboardingModel> oneboardingModelObj = OneboardingModel().obs;

Rx<int> sliderIndex = 0.obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.loginScreen,);}); } 
 }
