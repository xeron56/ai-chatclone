import '../../../core/app_export.dart';/// This class is used in the [warp_item_widget] screen.
class WarpItemModel {WarpItemModel({this.settings, this.writingArticle, this.generatingArticle, this.id, }) { settings = settings  ?? Rx(ImageConstant.imgSettings);writingArticle = writingArticle  ?? Rx("Writing Article");generatingArticle = generatingArticle  ?? Rx("generating article text is easier with aisatant ai");id = id  ?? Rx(""); }

Rx<String>? settings;

Rx<String>? writingArticle;

Rx<String>? generatingArticle;

Rx<String>? id;

 }
