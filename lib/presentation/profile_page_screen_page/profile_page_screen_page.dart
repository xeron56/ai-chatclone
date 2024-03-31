import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/profile_page_screen_controller.dart';
import 'models/profile_page_screen_model.dart';

class ProfilePageScreenPage extends StatelessWidget {
  ProfilePageScreenPage({Key? key})
      : super(
          key: key,
        );

  ProfilePageScreenController controller =
      Get.put(ProfilePageScreenController(ProfilePageScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                    children: [
                      Container(
                        height: 51.adaptSize,
                        width: 51.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(
                            25.h,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: _buildFrame(
                            dataStorage: "lbl_abu_oemar".tr,
                            fileImage: "lbl_free_plan".tr,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              _buildBanner(),
              SizedBox(height: 38.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgComponent4Onerrorcontainer,
                        width: 16.h,
                        margin: EdgeInsets.only(
                          top: 8.v,
                          bottom: 10.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_account".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "msg_privacy_security".tr,
                              style: CustomTextStyles.bodySmallGray400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 34.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUserOnerrorcontainer,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        margin: EdgeInsets.only(
                          top: 7.v,
                          bottom: 8.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_ai_chat".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "lbl_history_arsip".tr,
                              style: CustomTextStyles.bodySmallGray400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      Container(
                        height: 45.adaptSize,
                        width: 45.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                child: CircularProgressIndicator(
                                  value: 0.5,
                                  strokeWidth: 3.h,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                child: CircularProgressIndicator(
                                  value: 0.5,
                                  strokeWidth: 3.h,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                  border: Border.all(
                                    color: theme.colorScheme.onErrorContainer
                                        .withOpacity(1),
                                    width: 3.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 3.v,
                          ),
                          child: _buildFrame(
                            dataStorage: "lbl_data_storage".tr,
                            fileImage: "lbl_file_image".tr,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        width: 37.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_notifications".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "msg_payment_version".tr,
                              style: CustomTextStyles.bodySmallGray400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 36.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaterialSymbolsHelpOutline,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 10.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_help_center".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "msg_faq_contact_privacy".tr,
                              style: CustomTextStyles.bodySmallGray400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          children: [
            Container(
              height: 86.v,
              width: 98.h,
              margin: EdgeInsets.symmetric(vertical: 9.v),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.h),
                      padding: EdgeInsets.all(18.h),
                      decoration: AppDecoration.outlineIndigoA700211.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder40,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgStar3,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          3.h,
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
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
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
                        top: 5.v,
                        right: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar11,
                    height: 9.adaptSize,
                    width: 9.adaptSize,
                    radius: BorderRadius.circular(
                      1.h,
                    ),
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 23.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar4,
                    height: 9.adaptSize,
                    width: 9.adaptSize,
                    radius: BorderRadius.circular(
                      1.h,
                    ),
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 17.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar21,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    radius: BorderRadius.circular(
                      1.h,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 25.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar5,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    radius: BorderRadius.circular(
                      1.h,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 17.h),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 113.h,
                    child: Text(
                      "msg_upgrade_to_premium".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumOnErrorContainer,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Opacity(
                    opacity: 0.6,
                    child: SizedBox(
                      width: 148.h,
                      child: Text(
                        "msg_enjoy_all_benefits".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodySmallOnErrorContainer.copyWith(
                          height: 1.70,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String dataStorage,
    required String fileImage,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dataStorage,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
          ),
        ),
        SizedBox(height: 1.v),
        Text(
          fileImage,
          style: CustomTextStyles.bodySmallGray400.copyWith(
            color: appTheme.gray400,
          ),
        ),
      ],
    );
  }
}
