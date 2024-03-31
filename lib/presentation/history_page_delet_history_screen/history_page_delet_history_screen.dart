import 'package:ai_chatclone/presentation/ai_chat_page_screen_page/ai_chat_page_screen_page.dart';
import 'package:ai_chatclone/presentation/ai_asistent_page_screen_tab_container_page/ai_asistent_page_screen_tab_container_page.dart';
import 'package:ai_chatclone/presentation/history_page/history_page.dart';
import 'package:ai_chatclone/presentation/profile_page_screen_page/profile_page_screen_page.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/history_page_delet_history_controller.dart';

// ignore_for_file: must_be_immutable
class HistoryPageDeletHistoryScreen
    extends GetWidget<HistoryPageDeletHistoryController> {
  const HistoryPageDeletHistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray900,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 25.h,
            top: 61.v,
            right: 25.h,
          ),
          child: Column(
            children: [
              _buildFrame1(),
              SizedBox(height: 38.v),
              _buildFrame2(),
              SizedBox(height: 15.v),
              _buildFrame(
                writeTheBestQuote: "msg_learning_fast_can2".tr,
              ),
              SizedBox(height: 15.v),
              _buildFrame4(),
              SizedBox(height: 15.v),
              _buildFrame(
                writeTheBestQuote: "msg_write_the_best_quote2".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_history".tr,
            style: CustomTextStyles.titleMediumOnErrorContainer,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "lbl_clear_all".tr,
              style: CustomTextStyles.labelLargeBlue200,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomTextFormField(
            controller: controller.mingcuteopenaifillController,
            hintText: "msg_learning_fast_can3".tr,
            hintStyle: CustomTextStyles.bodySmallOnErrorContainer_1,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(27.h, 25.v, 30.h, 25.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMingcuteOpenaiFill,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 71.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 26.v,
              right: 30.h,
              bottom: 26.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL201,
            fillColor: appTheme.blueGray80001,
          ),
        ),
        Container(
          height: 71.adaptSize,
          width: 71.adaptSize,
          margin: EdgeInsets.only(left: 10.h),
          padding: EdgeInsets.all(14.h),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: CustomIconButton(
            height: 43.adaptSize,
            width: 43.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL21,
            alignment: Alignment.center,
            child: CustomImageView(
              imagePath: ImageConstant.imgIcRoundDelete,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 92.v),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
              child: CustomImageView(
                imagePath: ImageConstant.imgMingcuteOpenaiFill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 207.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_how_to_learn_fast".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 6.v,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        margin: EdgeInsets.only(
                          top: 9.v,
                          bottom: 2.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: 146.h,
                    child: Text(
                      "msg_learning_fast_can".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.bodySmallOnErrorContainer_1.copyWith(
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
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildFrame({required String writeTheBestQuote}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(13.h),
            decoration: AppDecoration.fillBluegray700.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder24,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgMingcuteOpenaiFill,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 16.v,
                bottom: 14.v,
              ),
              child: Text(
                writeTheBestQuote,
                style: CustomTextStyles.bodySmallOnErrorContainer_1.copyWith(
                  color: theme.colorScheme.onErrorContainer,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            width: 26.h,
            margin: EdgeInsets.only(
              left: 25.h,
              top: 10.v,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Chat:
        return AppRoutes.aiChatPageScreenPage;
      case BottomBarEnum.Aiassistants:
        return AppRoutes.aiAsistentPageScreenTabContainerPage;
      case BottomBarEnum.History:
        return AppRoutes.historyPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePageScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.aiChatPageScreenPage:
        return AiChatPageScreenPage();
      case AppRoutes.aiAsistentPageScreenTabContainerPage:
        return AiAsistentPageScreenTabContainerPage();
      case AppRoutes.historyPage:
        return HistoryPage();
      case AppRoutes.profilePageScreenPage:
        return ProfilePageScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
