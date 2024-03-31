import '../../../core/app_export.dart';import 'warp_item_model.dart';/// This class defines the variables used in the [ai_asistent_page_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AiAsistentPageScreenModel {Rx<List<WarpItemModel>> warpItemList = Rx([WarpItemModel(settings:ImageConstant.imgSettings.obs,writingArticle: "Writing Article".obs,generatingArticle: "generating article text is easier with aisatant ai".obs),WarpItemModel(settings:ImageConstant.imgBiQuote.obs,writingArticle: "Quote & poetry".obs,generatingArticle: "generating article text is easier with aisatant ai".obs),WarpItemModel(settings:ImageConstant.imgBiQuote.obs,writingArticle: "Image & Art".obs,generatingArticle: "generating article text is easier with aisatant ai".obs),WarpItemModel(settings:ImageConstant.imgSettings.obs,writingArticle: "Reach Js".obs,generatingArticle: "generating article text is easier with aisatant ai".obs)]);

 }
