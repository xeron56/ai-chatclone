import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/chat_page_screen_question_details_controller.dart';

// ignore_for_file: must_be_immutable
class ChatPageScreenQuestionDetailsScreen
    extends GetWidget<ChatPageScreenQuestionDetailsController> {
  const ChatPageScreenQuestionDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildHeader(),
                  SizedBox(height: 31.v),
                  _buildHelloAi(),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      right: 25.h,
                    ),
                    child: _buildFrame(
                      description: "msg_hello_how_can_i".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildText(),
                  SizedBox(height: 20.v),
                  _buildFrame2(),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      right: 25.h,
                    ),
                    child: _buildFrame(
                      description: "msg_certainly_here_s2".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildThaksAiLoveyou(),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      right: 25.h,
                    ),
                    child: _buildFrame(
                      description: "msg_you_re_welcome".tr,
                    ),
                  ),
                ],
              ),
            ),
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
              "lbl_ai_asistanat".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelloAi() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 42.h,
      ),
      child: CustomTextFormField(
        controller: controller.helloAiController,
        hintText: "lbl_hello_ai".tr,
        borderDecoration: TextFormFieldStyleHelper.fillPrimary,
        fillColor: theme.colorScheme.primary,
      ),
    );
  }

  /// Section Widget
  Widget _buildText() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 37.h,
      ),
      child: CustomTextFormField(
        controller: controller.textController,
        hintText: "msg_write_smart_short".tr,
        borderDecoration: TextFormFieldStyleHelper.fillPrimary,
        fillColor: theme.colorScheme.primary,
      ),
    );
  }

  /// Section Widget
  Widget _buildOkeSure() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
          controller: controller.okeSureController,
          hintText: "lbl_oke_sure".tr,
          borderDecoration: TextFormFieldStyleHelper.fillErrorContainer,
          fillColor: theme.colorScheme.errorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
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
          _buildOkeSure(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThaksAiLoveyou() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 40.h,
      ),
      child: CustomTextFormField(
        controller: controller.thaksAiLoveyouController,
        hintText: "msg_thaks_ai_love".tr,
        borderDecoration: TextFormFieldStyleHelper.fillPrimary,
        fillColor: theme.colorScheme.primary,
      ),
    );
  }

  /// Section Widget
  Widget _buildPlay() {
    return Expanded(
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
            _buildPlay(),
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

  /// Common widget
  Widget _buildFrame({required String description}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 380.v),
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
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 9.v),
                Container(
                  width: 200.h,
                  margin: EdgeInsets.only(right: 9.h),
                  child: Text(
                    description,
                    maxLines: 20,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                      height: 1.70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
