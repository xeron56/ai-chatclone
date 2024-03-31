import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_title.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:ai_chatclone/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/payment_page_input_card_actived_controller.dart';

// ignore_for_file: must_be_immutable
class PaymentPageInputCardActivedScreen
    extends GetWidget<PaymentPageInputCardActivedController> {
  const PaymentPageInputCardActivedScreen({Key? key})
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
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      children: [
                        _buildCreditCard(),
                        SizedBox(height: 31.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "lbl_full_name".tr,
                              style:
                                  CustomTextStyles.titleMediumOnErrorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 19.v),
                        _buildFullName(),
                        SizedBox(height: 21.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "lbl_country".tr,
                              style:
                                  CustomTextStyles.titleMediumOnErrorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 24.v, 20.h, 24.v),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFavoriteBlueGray300,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                            ),
                          ),
                          hintText: "lbl_england".tr,
                          items: controller.paymentPageInputCardActivedModelObj
                              .value.dropdownItemList!.value,
                        ),
                        SizedBox(height: 19.v),
                        _buildFrame(),
                        SizedBox(height: 17.v),
                        _buildFrame1(),
                      ],
                    ),
                  ),
                ),
              ),
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
  Widget _buildTf() {
    return CustomElevatedButton(
      height: 50.v,
      text: "msg_2322_4355_4322_3432".tr,
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }

  /// Section Widget
  Widget _buildCreditCard() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "lbl_mu_card".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Text(
                  "lbl_mastercard".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          _buildTf(),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "msg_card_holder_name".tr,
                    style: CustomTextStyles.labelLargeOnErrorContainer_1,
                  ),
                ),
                Text(
                  "lbl_expery_date".tr,
                  style: CustomTextStyles.labelLargeOnErrorContainer_1,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_adam_smith".tr,
                      style: CustomTextStyles.bodySmallOnErrorContainer,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "lbl_12_23".tr,
                          style: CustomTextStyles.bodySmallOnErrorContainer,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 28.v,
                      margin: EdgeInsets.only(left: 10.h),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
      controller: controller.fullNameController,
      hintText: "lbl_adam_smith".tr,
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_expery_date".tr,
              style: CustomTextStyles.titleMediumOnErrorContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_cvv".tr,
              style: CustomTextStyles.titleMediumOnErrorContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDate() {
    return Expanded(
      child: CustomTextFormField(
        controller: controller.dateController,
        hintText: "lbl_12_23".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode() {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 83.h,
        controller: controller.zipcodeController,
        hintText: "lbl_2023".tr,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 21.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildDate(),
          _buildZipcode(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPayNow() {
    return CustomElevatedButton(
      text: "lbl_pay_now".tr,
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
      child: _buildPayNow(),
    );
  }
}
