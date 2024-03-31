import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/profile_page_chose_plan_actived_controller.dart';

// ignore_for_file: must_be_immutable
class ProfilePageChosePlanActivedScreen
    extends GetWidget<ProfilePageChosePlanActivedController> {
  const ProfilePageChosePlanActivedScreen({Key? key})
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
                  _buildCard(),
                  SizedBox(height: 20.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 39.h),
                    padding: EdgeInsets.all(5.h),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Container(
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
                            width: 235.h,
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
                              "lbl_premium".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Opacity(
                            opacity: 0.8,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "msg_unlimited_generate".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Opacity(
                            opacity: 0.8,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "msg_unlimited_ai_generate".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Opacity(
                            opacity: 0.8,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "msg_fast_respon_speed".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
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
  Widget _buildCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 36.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 20.v,
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
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_free_plan".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 19.v),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "msg_5x_generate_assistant".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "msg_slow_respon_speed".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "msg_7_day_trial_period".tr,
                style: theme.textTheme.bodyMedium,
              ),
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
      ),
    );
  }
}
