import 'fiftynine_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [oneboarding_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OneboardingModel {Rx<List<FiftynineItemModel>> fiftynineItemList = Rx(List.generate(1,(index) => FiftynineItemModel()));

 }
