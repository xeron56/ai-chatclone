import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_limit_controller.dart';

// ignore_for_file: must_be_immutable
class AiAsistentPageLimitScreen
    extends GetWidget<AiAsistentPageLimitController> {
  const AiAsistentPageLimitScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeader(),
              Spacer(
                flex: 50,
              ),
              _buildPopupLimit(),
              Spacer(
                flex: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        children: [
          CustomIconButton(
            height: 65.adaptSize,
            width: 65.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.outlineIndigoC,
            child: CustomImageView(
              imagePath: ImageConstant.imgInbox,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 20.v,
              bottom: 20.v,
            ),
            child: Text(
              "lbl_ai_asistanat".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopupLimit() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Container(
            height: 119.adaptSize,
            width: 119.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 37.h,
              vertical: 38.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder59,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 42.v,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 27.v),
          Container(
            width: 326.h,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Container(
                  width: 269.h,
                  margin: EdgeInsets.only(right: 16.h),
                  child: Text(
                    "msg_sorry_your_generate".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray300.copyWith(
                      height: 1.70,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.v),
          CustomElevatedButton(
            text: "lbl_upgrade_now".tr,
          ),
        ],
      ),
    );
  }
}
