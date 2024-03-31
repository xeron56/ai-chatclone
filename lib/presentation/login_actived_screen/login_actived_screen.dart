import 'package:ai_chatclone/core/utils/validation_functions.dart';import 'package:ai_chatclone/widgets/custom_text_form_field.dart';import 'package:ai_chatclone/widgets/custom_elevated_button.dart';import 'package:ai_chatclone/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:ai_chatclone/core/app_export.dart';import 'controller/login_actived_controller.dart';import 'package:ai_chatclone/domain/googleauth/google_auth_helper.dart';// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginActivedScreen extends GetWidget<LoginActivedController> {LoginActivedScreen({Key? key}) : super(key: key, );

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, ), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 43.v, ), child: Column(children: [SizedBox(height: 32.v), Text("lbl_hello_again".tr, style: theme.textTheme.headlineSmall, ), SizedBox(height: 11.v), Opacity(opacity: 0.5, child: SizedBox(width: 184.h, child: Text("msg_welcome_back_yo_ve".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallOnErrorContainer.copyWith(height: 1.70, ), ), ), ), SizedBox(height: 20.v), _buildEmail(), SizedBox(height: 25.v), _buildPassword(), SizedBox(height: 37.v), Text("msg_forgot_password".tr, style: CustomTextStyles.labelLargeOnErrorContainerSemiBold_1, ), SizedBox(height: 34.v), _buildSignIn(), SizedBox(height: 25.v), _buildSignWithGoogle(), SizedBox(height: 25.v), _buildSignWithApple(), SizedBox(height: 25.v), Opacity(opacity: 0.5, child: Text("lbl_or".tr, style: CustomTextStyles.labelLargeOnErrorContainerSemiBold, ), ), SizedBox(height: 38.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_dont_have_account2".tr, style: CustomTextStyles.labelLargeff767a8a, ), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.labelLargeff324eff, )], ), textAlign: TextAlign.left, )], ), ), ), ), ), ), ); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "msg_michaeli_gmail_com".tr, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v, ), child: CustomImageView(imagePath: ImageConstant.imgFrame51103, height: 34.v, ), ), prefixConstraints: BoxConstraints(maxHeight: 64.v, ), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v, ), borderDecoration: TextFormFieldStyleHelper.fillBlueGray, ); } 
/// Section Widget
Widget _buildPassword() { return Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v, ), child: CustomImageView(imagePath: ImageConstant.imgFrame51104, width: 38.h, ), ), prefixConstraints: BoxConstraints(maxHeight: 65.v, ), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 10.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize, ), ), ), suffixConstraints: BoxConstraints(maxHeight: 65.v, ), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.symmetric(vertical: 20.v), borderDecoration: TextFormFieldStyleHelper.fillBlueGray, ), ); } 
/// Section Widget
Widget _buildSignIn() { return CustomElevatedButton(text: "lbl_sign_in".tr, ); } 
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
