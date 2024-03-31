import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ai_chatclone/core/utils/validation_functions.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/forgot_password_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 126.v,
                  right: 25.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "msg_forgot_password".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 10.v),
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        width: 234.h,
                        margin: EdgeInsets.only(
                          left: 44.h,
                          right: 45.h,
                        ),
                        child: Text(
                          "msg_type_your_email".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallOnErrorContainer
                              .copyWith(
                            height: 1.70,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    CustomTextFormField(
                      controller: controller.emailController,
                      hintText: "msg_michaeli_gmail_com".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      prefix: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 15.v,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame51103,
                          height: 34.v,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 64.v,
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.only(
                        top: 20.v,
                        right: 30.h,
                        bottom: 20.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                    ),
                    SizedBox(height: 25.v),
                    CustomElevatedButton(
                      text: "lbl_reset_password".tr,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 115.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCloseBlueGray300,
        margin: EdgeInsets.only(
          left: 25.h,
          right: 285.h,
        ),
      ),
    );
  }
}
