import '../models/warp_item_model.dart';
import '../controller/ai_asistent_page_screen_controller.dart';
import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';

// ignore: must_be_immutable
class WarpItemWidget extends StatelessWidget {
  WarpItemWidget(
    this.warpItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WarpItemModel warpItemModelObj;

  var controller = Get.find<AiAsistentPageScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Obx(
            () => CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillSecondaryContainer,
              child: CustomImageView(
                imagePath: warpItemModelObj.settings!.value,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Obx(
            () => Text(
              warpItemModelObj.writingArticle!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 6.v),
          Opacity(
            opacity: 0.6,
            child: SizedBox(
              width: 107.h,
              child: Obx(
                () => Text(
                  warpItemModelObj.generatingArticle!.value,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallOnErrorContainer.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
