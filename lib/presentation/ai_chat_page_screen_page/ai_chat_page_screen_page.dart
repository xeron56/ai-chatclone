import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_subtitle.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_chat_page_screen_controller.dart';
import 'models/ai_chat_page_screen_model.dart';

class AiChatPageScreenPage extends StatelessWidget {
  AiChatPageScreenPage({Key? key})
      : super(
          key: key,
        );

  AiChatPageScreenController controller =
      Get.put(AiChatPageScreenController(AiChatPageScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 215.adaptSize,
                width: 215.adaptSize,
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder107,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
                  height: 76.v,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 41.v),
              SizedBox(
                width: 173.h,
                child: Text(
                  "msg_welcome_to_chat".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_start_chatting_with".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_start_chat".tr,
              ),
              SizedBox(height: 1.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 98.v,
      leadingWidth: 69.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgMingcuteOpenaiFill,
        margin: EdgeInsets.only(
          left: 35.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_ai_assistant".tr,
      ),
    );
  }
}
