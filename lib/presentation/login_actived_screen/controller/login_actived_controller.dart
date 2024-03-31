import '../../../core/app_export.dart';import '../models/login_actived_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginActivedScreen.
///
/// This class manages the state of the LoginActivedScreen, including the
/// current loginActivedModelObj
class LoginActivedController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginActivedModel> loginActivedModelObj = LoginActivedModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
