import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:ai_chatclone/core/utils/validation_functions.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/reset_password_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key})
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
                  top: 103.v,
                  right: 25.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "lbl_new_password".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 14.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "msg_create_your_new".tr,
                        style: CustomTextStyles.titleSmallOnErrorContainer,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Obx(
                      () => CustomTextFormField(
                        controller: controller.newpasswordController,
                        hintText: "lbl_new_password".tr,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 12.v,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame51104,
                            width: 38.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 65.v,
                        ),
                        suffix: InkWell(
                          onTap: () {
                            controller.isShowPassword.value =
                                !controller.isShowPassword.value;
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 20.v, 10.h, 20.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 65.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: controller.isShowPassword.value,
                        contentPadding: EdgeInsets.symmetric(vertical: 20.v),
                        borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Obx(
                      () => CustomTextFormField(
                        controller: controller.newpasswordController1,
                        hintText: "lbl_new_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 12.v,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame51104,
                            width: 38.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 65.v,
                        ),
                        suffix: InkWell(
                          onTap: () {
                            controller.isShowPassword1.value =
                                !controller.isShowPassword1.value;
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 20.v, 10.h, 20.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 65.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: controller.isShowPassword1.value,
                        contentPadding: EdgeInsets.symmetric(vertical: 20.v),
                        borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                      ),
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
      height: 110.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgCloseBlueGray300,
        margin: EdgeInsets.fromLTRB(35.h, 5.v, 295.h, 5.v),
      ),
    );
  }
}
