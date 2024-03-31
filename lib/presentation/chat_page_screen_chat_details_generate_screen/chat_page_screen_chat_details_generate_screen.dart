import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_title.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/chat_page_screen_chat_details_generate_controller.dart';

// ignore_for_file: must_be_immutable
class ChatPageScreenChatDetailsGenerateScreen
    extends GetWidget<ChatPageScreenChatDetailsGenerateController> {
  const ChatPageScreenChatDetailsGenerateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 31.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Column(
                      children: [
                        _buildHelloAi(),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildFrame(
                            learningFastCan: "msg_hello_how_can_i".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildText(),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildFrame(
                            learningFastCan: "msg_learning_fast_can".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildText1(),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildFrame(
                            learningFastCan: "msg_be_the_change_you".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildText2(),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildFrame(
                            learningFastCan: "msg_yes_i_can_help".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildText3(),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildFrame(
                            learningFastCan: "msg_certainly_here_s".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildFrame(
                            learningFastCan: "msg_doctype_html".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildGreat(),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildFrame(
                            learningFastCan: "msg_i_m_glad_you_liked".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
  Widget _buildText() {
    return Container(
      width: 306.h,
      margin: EdgeInsets.only(
        left: 7.h,
        right: 12.h,
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
  Widget _buildText1() {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 15.h,
      ),
      child: CustomTextFormField(
        controller: controller.textController,
        hintText: "msg_write_the_best_quote".tr,
        borderDecoration: TextFormFieldStyleHelper.fillPrimary,
        fillColor: theme.colorScheme.primary,
      ),
    );
  }

  /// Section Widget
  Widget _buildText2() {
    return Container(
      width: 303.h,
      margin: EdgeInsets.only(
        left: 7.h,
        right: 15.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Text(
        "msg_can_you_code_the".tr,
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildText3() {
    return Container(
      margin: EdgeInsets.only(
        left: 7.h,
        right: 15.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            width: 259.h,
            child: Text(
              "msg_create_code_html".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.70,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGreat() {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 15.h,
      ),
      child: CustomTextFormField(
        controller: controller.greatController,
        hintText: "lbl_great".tr,
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
