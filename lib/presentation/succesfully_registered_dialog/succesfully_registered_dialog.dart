import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/succesfully_registered_controller.dart';

class SuccesfullyRegisteredDialog extends StatelessWidget {
  SuccesfullyRegisteredDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SuccesfullyRegisteredController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 325.h,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 46.v,
          ),
          decoration: AppDecoration.shadow.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder40,
          ),
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 77.v,
                  width: 98.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: theme.colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder40,
                          ),
                          child: Container(
                            height: 77.adaptSize,
                            width: 77.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.h,
                              vertical: 30.v,
                            ),
                            decoration: AppDecoration.outlineIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark,
                                  height: 17.v,
                                  radius: BorderRadius.circular(
                                    2.h,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgCheckmarkOnerrorcontainer,
                                  height: 17.v,
                                  radius: BorderRadius.circular(
                                    2.h,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            right: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStar1,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 19.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStar2,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 20.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.v),
                SizedBox(
                  width: 150.h,
                  child: Text(
                    "msg_successfully_registered".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 23.v),
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: 270.h,
                    child: Text(
                      "msg_congratulations".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          CustomTextStyles.titleSmallOnErrorContainer.copyWith(
                        height: 1.70,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                CustomElevatedButton(
                  width: 179.h,
                  text: "lbl_home".tr,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
