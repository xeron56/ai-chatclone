import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ai_chatclone/widgets/custom_text_form_field.dart';import 'package:ai_chatclone/core/utils/validation_functions.dart';import 'package:ai_chatclone/widgets/custom_elevated_button.dart';import 'package:ai_chatclone/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:ai_chatclone/core/app_export.dart';import 'controller/signup_controller.dart';import 'package:ai_chatclone/domain/googleauth/google_auth_helper.dart';// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {SignupScreen({Key? key}) : super(key: key, );

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SingleChildScrollView(padding: EdgeInsets.only(top: 29.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_create_an_account".tr, style: theme.textTheme.headlineSmall, ), ), SizedBox(height: 39.v), _buildPassword(), SizedBox(height: 19.v), _buildEmail(), SizedBox(height: 19.v), _buildPassword1(), SizedBox(height: 19.v), _buildSignUp(), SizedBox(height: 31.v), Text("msg_forgot_password".tr, style: CustomTextStyles.labelLargeOnErrorContainerSemiBold_1, ), SizedBox(height: 29.v), Opacity(opacity: 0.5, child: Text("lbl_or".tr, style: CustomTextStyles.labelLargeOnErrorContainerSemiBold, ), ), SizedBox(height: 20.v), _buildSignWithGoogle(), SizedBox(height: 19.v), _buildSignWithApple(), SizedBox(height: 30.v), Container(width: 244.h, margin: EdgeInsets.only(left: 41.h, right: 40.h, ), child: Text("msg_by_sign_in_accept".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.labelLargeGray600.copyWith(height: 1.70, ), ), )], ), ), ), ), ), ); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 105.v, leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgCloseBlueGray300, margin: EdgeInsets.only(left: 21.h, right: 289.h, ), ), ); } 
/// Section Widget
Widget _buildPassword() { return CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v, ), child: CustomImageView(imagePath: ImageConstant.imgFrame51104, width: 38.h, ), ), prefixConstraints: BoxConstraints(maxHeight: 65.v, ), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v, ), borderDecoration: TextFormFieldStyleHelper.fillBlueGray, ); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "msg_michaeli_gmail_com".tr, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v, ), child: CustomImageView(imagePath: ImageConstant.imgFrame51103, height: 34.v, ), ), prefixConstraints: BoxConstraints(maxHeight: 64.v, ), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v, ), borderDecoration: TextFormFieldStyleHelper.fillBlueGray, ); } 
/// Section Widget
Widget _buildPassword1() { return Obx(() => CustomTextFormField(controller: controller.passwordController1, hintText: "lbl".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v, ), child: CustomImageView(imagePath: ImageConstant.imgFrame51104, width: 38.h, ), ), prefixConstraints: BoxConstraints(maxHeight: 65.v, ), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 10.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize, ), ), ), suffixConstraints: BoxConstraints(maxHeight: 65.v, ), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.symmetric(vertical: 20.v), borderDecoration: TextFormFieldStyleHelper.fillBlueGray, ), ); } 
/// Section Widget
Widget _buildSignUp() { return CustomElevatedButton(text: "lbl_sign_up".tr, ); } 
/// Section Widget
Widget _buildSignWithGoogle() { return CustomOutlinedButton(text: "msg_sign_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize, ), ), onPressed: () {onTapSignWithGoogle();}, ); } 
/// Section Widget
Widget _buildSignWithApple() { return CustomOutlinedButton(text: "lbl_sign_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgUser, width: 24.h, ), ), ); } 
onTapSignWithGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
 }
