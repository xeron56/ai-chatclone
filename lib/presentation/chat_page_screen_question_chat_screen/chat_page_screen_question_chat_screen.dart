import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_title.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/chat_page_screen_question_chat_controller.dart';

// ignore_for_file: must_be_immutable
class ChatPageScreenQuestionChatScreen
    extends GetWidget<ChatPageScreenQuestionChatController> {
  const ChatPageScreenQuestionChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 31.v,
          ),
          child: Column(
            children: [
              _buildHelloAi(),
              SizedBox(height: 20.v),
              _buildFrame(),
              SizedBox(height: 20.v),
              _buildText(),
              SizedBox(height: 20.v),
              _buildFrame1(),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 10.v,
                  margin: EdgeInsets.only(right: 10.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 4,
                    effect: ScrollingDotsEffect(
                      spacing: 3,
                      activeDotColor: theme.colorScheme.errorContainer,
                      dotColor: theme.colorScheme.errorContainer,
                      dotHeight: 10.v,
                      dotWidth: 10.h,
                    ),
                  ),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 90.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgInbox,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 31.v,
          bottom: 31.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_ai_asistanat".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildHelloAi() {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: controller.helloAiController,
        hintText: "lbl_hello_ai".tr,
        alignment: Alignment.centerLeft,
        borderDecoration: TextFormFieldStyleHelper.fillPrimary,
        fillColor: theme.colorScheme.primary,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
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
          Container(
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              "msg_hello_how_can_i".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildText() {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 12.h,
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
  Widget _buildFrame1() {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
    );
  }
}
