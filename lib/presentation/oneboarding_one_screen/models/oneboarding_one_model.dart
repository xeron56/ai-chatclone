import 'fiftyfour_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [oneboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OneboardingOneModel {Rx<List<FiftyfourItemModel>> fiftyfourItemList = Rx(List.generate(1,(index) => FiftyfourItemModel()));

 }
