import '../../../core/app_export.dart';import '../models/signup_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

Rx<SignupModel> signupModelObj = SignupModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); emailController.dispose(); passwordController1.dispose(); } 
 }
