import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_reach_js_start_controller.dart';

// ignore_for_file: must_be_immutable
class AiAsistentPageReachJsStartScreen
    extends GetWidget<AiAsistentPageReachJsStartController> {
  const AiAsistentPageReachJsStartScreen({Key? key})
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
              SizedBox(height: 31.v),
              _buildText(),
              SizedBox(height: 20.v),
              _buildFrame(),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 37.h,
                ),
                child: CustomTextFormField(
                  controller: controller.textController1,
                  hintText: "msg_create_header_with".tr,
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  fillColor: theme.colorScheme.primary,
                ),
              ),
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
              top: 20.v,
              bottom: 20.v,
            ),
            child: Text(
              "lbl_ai_reach_js".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildText() {
    return Container(
      width: 301.h,
      margin: EdgeInsets.only(
        left: 32.h,
        right: 42.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Text(
        "msg_do_you_know_reach".tr,
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 25.h,
      ),
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
                controller: controller.textController,
                hintText: "msg_yeah_im_expert_reach".tr,
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
