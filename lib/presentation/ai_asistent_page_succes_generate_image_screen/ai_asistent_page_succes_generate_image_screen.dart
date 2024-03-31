import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_succes_generate_image_controller.dart';

// ignore_for_file: must_be_immutable
class AiAsistentPageSuccesGenerateImageScreen
    extends GetWidget<AiAsistentPageSuccesGenerateImageController> {
  const AiAsistentPageSuccesGenerateImageScreen({Key? key})
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
              SizedBox(height: 34.v),
              _buildFrame(),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 28.h,
                  right: 45.h,
                ),
                child: CustomTextFormField(
                  controller: controller.textController,
                  hintText: "msg_generate_panda_image".tr,
                  alignment: Alignment.centerLeft,
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  fillColor: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 20.v),
              _buildFrame1(),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 93.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Text(
                        "lbl_cute".tr,
                        style: CustomTextStyles.labelLargeOnErrorContainer_1,
                      ),
                    ),
                    Container(
                      width: 93.h,
                      margin: EdgeInsets.only(left: 9.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.outlineBluegray80054.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Text(
                        "lbl_art".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Container(
                      width: 93.h,
                      margin: EdgeInsets.only(left: 9.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.outlineBluegray80054.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Text(
                        "lbl_3d".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              _buildFrame2(),
              SizedBox(height: 5.v),
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
              top: 23.v,
              bottom: 17.v,
            ),
            child: Text(
              "lbl_ai_image_art".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.v),
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMingcuteOpenaiFill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Container(
                    width: 203.h,
                    margin: EdgeInsets.only(right: 6.h),
                    child: Text(
                      "msg_generate_very_simple".tr,
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgMingcuteOpenaiFill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: CustomTextFormField(
                controller: controller.selectYourStyleController,
                hintText: "msg_select_your_style".tr,
                borderDecoration: TextFormFieldStyleHelper.fillErrorContainer,
                fillColor: theme.colorScheme.errorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 140.v),
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMingcuteOpenaiFill,
              ),
            ),
          ),
          Container(
            height: 196.v,
            width: 250.h,
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.all(18.h),
            decoration: AppDecoration.fillErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage6,
              height: 160.v,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
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
