import 'package:ai_chatclone/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:ai_chatclone/core/app_export.dart';import 'controller/failed_registered_controller.dart';
// ignore_for_file: must_be_immutable
class FailedRegisteredDialog extends StatelessWidget {FailedRegisteredDialog(this.controller, {Key? key}) : super(key: key, );

FailedRegisteredController controller;

@override Widget build(BuildContext context) { return Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Container(width: 325.h, padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 46.v, ), decoration: AppDecoration.shadow.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: Material(child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 77.v, width: 98.h, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.center, child: Container(height: 77.adaptSize, width: 77.adaptSize, padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 30.v, ), decoration: AppDecoration.outlineIndigoA70021.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 17.adaptSize, width: 17.adaptSize, alignment: Alignment.center, onTap: () {onTapImgClose();}, ), ), ), Align(alignment: Alignment.bottomLeft, child: Container(height: 11.adaptSize, width: 11.adaptSize, margin: EdgeInsets.only(left: 6.h, bottom: 2.v, ), decoration: BoxDecoration(color: appTheme.redA700, borderRadius: BorderRadius.circular(5.h, ), ), ), ), Align(alignment: Alignment.topRight, child: Container(height: 11.adaptSize, width: 11.adaptSize, margin: EdgeInsets.only(top: 1.v, right: 4.h, ), decoration: BoxDecoration(color: appTheme.redA700, borderRadius: BorderRadius.circular(5.h, ), ), ), ), CustomImageView(imagePath: ImageConstant.imgStar19x9, height: 9.adaptSize, width: 9.adaptSize, radius: BorderRadius.circular(1.h, ), alignment: Alignment.topRight, margin: EdgeInsets.only(top: 19.v), ), CustomImageView(imagePath: ImageConstant.imgStar210x10, height: 10.adaptSize, width: 10.adaptSize, radius: BorderRadius.circular(1.h, ), alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 20.v), )], ), ), SizedBox(height: 25.v), SizedBox(width: 123.h, child: Text("msg_failed_registered".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall, ), ), SizedBox(height: 23.v), Opacity(opacity: 0.5, child: SizedBox(width: 226.h, child: Text("msg_failed_registered2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallOnErrorContainer.copyWith(height: 1.70, ), ), ), ), SizedBox(height: 21.v), CustomElevatedButton(text: "lbl_re_registration".tr, margin: EdgeInsets.symmetric(horizontal: 23.h), )], ), ), )], ); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
