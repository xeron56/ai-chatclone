import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_chat_page_mic_on_controller.dart';

// ignore_for_file: must_be_immutable
class AiChatPageMicOnScreen extends GetWidget<AiChatPageMicOnController> {
  const AiChatPageMicOnScreen({Key? key})
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
              Padding(
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
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 25.h,
                ),
                child: _buildFrame(
                  learningFastCan: "msg_hello_how_can_i".tr,
                ),
              ),
              SizedBox(height: 20.v),
              _buildText(),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 25.h,
                ),
                child: _buildFrame(
                  learningFastCan: "msg_learning_fast_can".tr,
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 40.h,
                ),
                child: CustomTextFormField(
                  controller: controller.textController,
                  hintText: "msg_write_the_best_quote".tr,
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  fillColor: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 25.h,
                ),
                child: _buildFrame(
                  learningFastCan: "msg_be_the_change_you".tr,
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
              "lbl_ai_asistanat".tr,
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
      width: 306.h,
      margin: EdgeInsets.only(
        left: 32.h,
        right: 37.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Text(
        "msg_how_to_learn_fast".tr,
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMassageVoice() {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 22.v,
      ),
      decoration: AppDecoration.outlineIndigoAE,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.editTextController,
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: CustomIconButton(
              height: 46.adaptSize,
              width: 46.adaptSize,
              padding: EdgeInsets.all(14.h),
              decoration: IconButtonStyleHelper.outlineIndigoA,
              child: CustomImageView(
                imagePath: ImageConstant.imgFluentMic16FilledOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({required String learningFastCan}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 40.v),
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
                  width: 208.h,
                  margin: EdgeInsets.only(right: 1.h),
                  child: Text(
                    learningFastCan,
                    maxLines: 3,
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
