import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/icons_controller.dart';

// ignore_for_file: must_be_immutable
class IconsScreen extends GetWidget<IconsController> {
  const IconsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SizedBox(
          width: 647.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildEight(),
                SizedBox(height: 128.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 125.h,
                    right: 176.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(bottom: 6.v),
                      ),
                      Spacer(
                        flex: 37,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgHomeGray300,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(bottom: 6.v),
                      ),
                      Spacer(
                        flex: 40,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgComponent,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 7.v,
                          bottom: 8.v,
                        ),
                      ),
                      Spacer(
                        flex: 21,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMail,
                        height: 34.v,
                        margin: EdgeInsets.only(top: 5.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 125.h,
                    right: 176.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame162576,
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 5.v,
                        ),
                      ),
                      Spacer(
                        flex: 37,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame162576Gray300,
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 5.v,
                        ),
                      ),
                      Spacer(
                        flex: 40,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgAppleIcons,
                        width: 24.h,
                        margin: EdgeInsets.only(
                          top: 13.v,
                          bottom: 3.v,
                        ),
                      ),
                      Spacer(
                        flex: 21,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        width: 38.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 130.h,
                    right: 183.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame162575,
                        width: 23.h,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 13.v,
                        ),
                      ),
                      Spacer(
                        flex: 40,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame162575Gray300,
                        width: 23.h,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 13.v,
                        ),
                      ),
                      Spacer(
                        flex: 38,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgNotification,
                        width: 37.h,
                      ),
                      Spacer(
                        flex: 21,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEye,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 19.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 31.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 133.h,
                    right: 262.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 23.v,
                        width: 16.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgComponent4,
                              width: 16.h,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgComponent4,
                              width: 16.h,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgComponent4Gray300,
                        width: 16.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 125.h,
                    right: 264.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                      Spacer(
                        flex: 49,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLocationGray300,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMingcuteShoppingBag2Fill,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 9.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 43.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 128.h,
                    right: 260.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        margin: EdgeInsets.only(top: 5.v),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 26.adaptSize,
                              width: 26.adaptSize,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 26.adaptSize,
                              width: 26.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorGray300,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        margin: EdgeInsets.only(bottom: 5.v),
                      ),
                      Spacer(
                        flex: 49,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSave,
                        width: 28.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 124.h,
                    right: 265.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavoritePrimary,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(top: 7.v),
                      ),
                      Spacer(
                        flex: 48,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFavoriteGray300,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(top: 7.v),
                      ),
                      Spacer(
                        flex: 51,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgAiAsistannts,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 12.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 125.h,
                    right: 265.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgExplore,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(top: 16.v),
                      ),
                      Spacer(
                        flex: 49,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgExploreGray300,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(top: 16.v),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconamoonProfileFill,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 22.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 242.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAppleIcons,
                        width: 24.h,
                        margin: EdgeInsets.only(top: 15.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIonTime,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 92.h,
                          bottom: 16.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 214.v),
                CustomImageView(
                  imagePath: ImageConstant.imgMingcuteOpenaiFill,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 293.h),
                ),
                SizedBox(height: 214.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEight() {
    return Container(
      width: 647.h,
      padding: EdgeInsets.symmetric(
        horizontal: 100.h,
        vertical: 107.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 21.v),
          Text(
            "lbl_icons".tr,
            style: theme.textTheme.displayLarge,
          ),
          SizedBox(height: 20.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              "msg_icon_design_style".tr,
              style: theme.textTheme.displaySmall,
            ),
          ),
        ],
      ),
    );
  }
}
