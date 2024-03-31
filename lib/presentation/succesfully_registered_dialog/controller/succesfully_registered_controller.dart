import '../../../core/app_export.dart';
import '../models/succesfully_registered_model.dart';

/// A controller class for the SuccesfullyRegisteredDialog.
///
/// This class manages the state of the SuccesfullyRegisteredDialog, including the
/// current succesfullyRegisteredModelObj
class SuccesfullyRegisteredController extends GetxController {
  Rx<SuccesfullyRegisteredModel> succesfullyRegisteredModelObj =
      SuccesfullyRegisteredModel().obs;
}
