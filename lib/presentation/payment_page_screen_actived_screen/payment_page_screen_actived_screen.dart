import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_title.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/payment_page_screen_actived_controller.dart';

// ignore_for_file: must_be_immutable
class PaymentPageScreenActivedScreen
    extends GetWidget<PaymentPageScreenActivedController> {
  const PaymentPageScreenActivedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  "lbl_payment_method".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                width: 284.h,
                margin: EdgeInsets.only(
                  left: 11.h,
                  right: 31.h,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallGray400.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
              SizedBox(height: 46.v),
              _buildFrame(),
              SizedBox(height: 12.v),
              _buildFrame1(),
              SizedBox(height: 12.v),
              _buildFrame2(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildCta(),
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
        text: "lbl_payment".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame162735,
            width: 31.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 7.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_paypal".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame162738,
            width: 38.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 11.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_spotify".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlue90011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserYellow800,
            height: 36.v,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_mastercard".tr,
              style: theme.textTheme.titleSmall,
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
