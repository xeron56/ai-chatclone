import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:ai_chatclone/presentation/ai_asistent_page_succes_generate_image_change_style_page/ai_asistent_page_succes_generate_image_change_style_page.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_succes_generate_image_change_style_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class AiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen
    extends GetWidget<
        AiAsistentPageSuccesGenerateImageChangeStyleTabContainerController> {
  const AiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen(
      {Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(),
                SizedBox(height: 31.v),
                _buildFrame(),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.h,
                    right: 45.h,
                  ),
                  child: CustomTextFormField(
                    controller: controller.textController,
                    hintText: "msg_generate_panda_image".tr,
                    alignment: Alignment.centerLeft,
                    borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                    fillColor: theme.colorScheme.primary,
                  ),
                ),
                SizedBox(height: 20.v),
                _buildFrame1(),
                SizedBox(height: 30.v),
                Container(
                  height: 41.v,
                  width: 298.h,
                  child: TabBar(
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor:
                        theme.colorScheme.onErrorContainer.withOpacity(1),
                    labelStyle: TextStyle(
                      fontSize: 12.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    unselectedLabelColor: appTheme.blueGray300,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 12.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    indicator: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.blueGray80054,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            10,
                          ),
                        ),
                      ],
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          "lbl_cute".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_art".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_3d".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 808.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      AiAsistentPageSuccesGenerateImageChangeStylePage(),
                      AiAsistentPageSuccesGenerateImageChangeStylePage(),
                      AiAsistentPageSuccesGenerateImageChangeStylePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        children: [
          CustomIconButton(
            height: 65.adaptSize,
            width: 65.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.outlineIndigoC,
            child: CustomImageView(
              imagePath: ImageConstant.imgInbox,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 23.v,
              bottom: 17.v,
            ),
            child: Text(
              "lbl_ai_image_art".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.v),
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMingcuteOpenaiFill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Container(
                    width: 203.h,
                    margin: EdgeInsets.only(right: 7.h),
                    child: Text(
                      "msg_generate_very_simple".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray300.copyWith(
                        height: 1.70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgMingcuteOpenaiFill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: CustomTextFormField(
                controller: controller.selectYourStyleController,
                hintText: "msg_select_your_style".tr,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.fillErrorContainer,
                fillColor: theme.colorScheme.errorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
