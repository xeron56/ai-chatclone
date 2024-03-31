import '../../../core/app_export.dart';import '../models/login_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginOneScreen.
///
/// This class manages the state of the LoginOneScreen, including the
/// current loginOneModelObj
class LoginOneController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginOneModel> loginOneModelObj = LoginOneModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
