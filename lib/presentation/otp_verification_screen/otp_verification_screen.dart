import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:ai_chatclone/widgets/custom_pin_code_text_field.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/otp_verification_controller.dart';

// ignore_for_file: must_be_immutable
class OtpVerificationScreen extends GetWidget<OtpVerificationController> {
  const OtpVerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 25.h,
            top: 106.v,
            right: 25.h,
          ),
          child: Column(
            children: [
              Text(
                "lbl_verify_code".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 11.v),
              Opacity(
                opacity: 0.5,
                child: SizedBox(
                  width: 186.h,
                  child: Text(
                    "msg_the_confimation".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallOnErrorContainer.copyWith(
                      height: 1.70,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                "msg_forgot_password".tr,
                style: CustomTextStyles.labelLargeOnErrorContainerSemiBold_1,
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_reset_password".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 100.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgCloseBlueGray300,
        margin: EdgeInsets.fromLTRB(35.h, 5.v, 295.h, 5.v),
      ),
    );
  }
}
