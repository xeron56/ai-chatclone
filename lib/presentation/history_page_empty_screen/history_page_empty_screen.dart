import 'package:ai_chatclone/presentation/ai_chat_page_screen_page/ai_chat_page_screen_page.dart';
import 'package:ai_chatclone/presentation/ai_asistent_page_screen_tab_container_page/ai_asistent_page_screen_tab_container_page.dart';
import 'package:ai_chatclone/presentation/history_page/history_page.dart';
import 'package:ai_chatclone/presentation/profile_page_screen_page/profile_page_screen_page.dart';
import 'package:ai_chatclone/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/history_page_empty_controller.dart';

// ignore_for_file: must_be_immutable
class HistoryPageEmptyScreen extends GetWidget<HistoryPageEmptyController> {
  const HistoryPageEmptyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray900,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 61.v,
          ),
          child: Column(
            children: [
              _buildFrame(),
              Spacer(
                flex: 58,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 54.h),
                child: Column(
                  children: [
                    Container(
                      height: 196.adaptSize,
                      width: 196.adaptSize,
                      padding: EdgeInsets.all(48.h),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder98,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 98.adaptSize,
                        width: 98.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 42.v),
                    Text(
                      "lbl_empty".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 10.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "msg_you_no_have_history".tr,
                        style: CustomTextStyles.titleSmallOnErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 41,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
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
