import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_ai_quote_poetry_controller.dart';

// ignore_for_file: must_be_immutable
class AiAsistentPageAiQuotePoetryScreen
    extends GetWidget<AiAsistentPageAiQuotePoetryController> {
  const AiAsistentPageAiQuotePoetryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeader(),
              Spacer(
                flex: 41,
              ),
              _buildPopupAi(),
              Spacer(
                flex: 58,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSendMassageVoice(),
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
              top: 22.v,
              bottom: 18.v,
            ),
            child: Text(
              "msg_ai_quote_poetry".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopupAi() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
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
          CustomElevatedButton(
            height: 56.v,
            text: "msg_makes_poetry_easier".tr,
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: CustomTextStyles.bodySmallGray300,
          ),
          SizedBox(height: 15.v),
          CustomElevatedButton(
            height: 56.v,
            text: "msg_make_long_poetry".tr,
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: CustomTextStyles.bodySmallGray300,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMassageVoice() {
    return Container(
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 22.v,
      ),
      decoration: AppDecoration.outlineIndigoAE,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.playController,
              hintText: "msg_write_to_send_massage".tr,
              hintStyle: CustomTextStyles.bodySmallBluegray30001,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 4.v, 7.h, 4.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  width: 36.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 20.h,
                top: 15.v,
                bottom: 15.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL24,
              child: CustomImageView(
                imagePath: ImageConstant.imgPrimeSend,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
