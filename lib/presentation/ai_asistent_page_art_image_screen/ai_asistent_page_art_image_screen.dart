import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_art_image_controller.dart';

// ignore_for_file: must_be_immutable
class AiAsistentPageArtImageScreen
    extends GetWidget<AiAsistentPageArtImageController> {
  const AiAsistentPageArtImageScreen({Key? key})
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
                flex: 46,
              ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: CustomTextFormField(
                  controller: controller.textController,
                  hintText: "msg_generate_very_simple".tr,
                  hintStyle: CustomTextStyles.bodySmallGray300,
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  fillColor: appTheme.gray90002,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.h),
                child: CustomTextFormField(
                  controller:
                      controller.startwithpopularaesthetichighaController,
                  hintText: "msg_start_with_popular".tr,
                  hintStyle: CustomTextStyles.bodySmallGray300,
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  fillColor: appTheme.gray90002,
                ),
              ),
              Spacer(
                flex: 53,
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
  Widget _buildSendMassageVoice() {
    return Container(
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 22.v,
      ),
      decoration: AppDecoration.outlineIndigoAE,
      child: Container(
        decoration: AppDecoration.outlineIndigoAE,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: controller.playController,
                hintText: "msg_generate_panda_image".tr,
                hintStyle: CustomTextStyles.bodySmallBluegray30001,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(27.h, 4.v, 7.h, 4.v),
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
      ),
    );
  }
}
