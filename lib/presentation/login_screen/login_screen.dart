import 'package:ai_chatclone/widgets/custom_elevated_button.dart';import 'package:ai_chatclone/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:ai_chatclone/core/app_export.dart';import 'controller/login_controller.dart';import 'package:ai_chatclone/domain/googleauth/google_auth_helper.dart';// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {const LoginScreen({Key? key}) : super(key: key, );

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_lets_get_started".tr, style: theme.textTheme.headlineSmall, ), SizedBox(height: 13.v), Opacity(opacity: 0.5, child: Container(width: 274.h, margin: EdgeInsets.only(left: 24.h, right: 27.h, ), child: Text("msg_find_the_right_ticket".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallOnErrorContainer.copyWith(height: 1.70, ), ), ), ), SizedBox(height: 21.v), CustomElevatedButton(text: "lbl_sign_up_email".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgFrame51103, height: 34.v, ), ), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: theme.textTheme.titleMedium!, ), SizedBox(height: 26.v), Opacity(opacity: 0.5, child: Text("msg_or_use_instant_sign".tr, style: CustomTextStyles.labelLargeOnErrorContainerSemiBold, ), ), SizedBox(height: 25.v), CustomOutlinedButton(text: "msg_sign_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize, ), ), onPressed: () {onTapSignWithGoogle();}, ), SizedBox(height: 25.v), CustomOutlinedButton(text: "lbl_sign_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgUser, width: 24.h, ), ), ), SizedBox(height: 37.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_already_have_an2".tr, style: CustomTextStyles.labelLargeff767a8a, ), TextSpan(text: " ", ), TextSpan(text: "lbl_sign_in".tr, style: CustomTextStyles.labelLargeff324eff, )], ), textAlign: TextAlign.left, ), SizedBox(height: 5.v)], ), ), ), ); } 
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
