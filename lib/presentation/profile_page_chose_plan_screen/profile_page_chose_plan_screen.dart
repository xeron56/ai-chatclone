import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/profile_page_chose_plan_controller.dart';

// ignore_for_file: must_be_immutable
class ProfilePageChosePlanScreen
    extends GetWidget<ProfilePageChosePlanController> {
  const ProfilePageChosePlanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildHeader(),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35.h),
                      child: Text(
                        "lbl_chose_plan".tr,
                        style: CustomTextStyles.titleMediumOnErrorContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 37.h),
                    child: _buildCard(
                      premium: "lbl_free_plan".tr,
                      unlimitedGenerate: "msg_5x_generate_assistant".tr,
                      unlimitedAIGenerate: "msg_slow_respon_speed".tr,
                      fastResponSpeed: "msg_7_day_trial_period".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 37.h),
                    child: _buildCard(
                      premium: "lbl_premium".tr,
                      unlimitedGenerate: "msg_unlimited_generate".tr,
                      unlimitedAIGenerate: "msg_unlimited_ai_generate".tr,
                      fastResponSpeed: "msg_fast_respon_speed".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildCta(),
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
              "lbl_chose_plan".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCta() {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 24.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: CustomElevatedButton(
        text: "lbl_next".tr,
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: theme.textTheme.titleMedium!,
      ),
    );
  }

  /// Common widget
  Widget _buildCard({
    required String premium,
    required String unlimitedGenerate,
    required String unlimitedAIGenerate,
    required String fastResponSpeed,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 71.v,
            width: 251.h,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL32,
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: ImageConstant.imgMingcuteOpenaiFill,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              premium,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                unlimitedGenerate,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.64),
                ),
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                unlimitedAIGenerate,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.64),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                fastResponSpeed,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.64),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
