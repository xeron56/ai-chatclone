import '../succesfully_registered_dialog/succesfully_registered_dialog.dart';
import '../succesfully_registered_dialog/controller/succesfully_registered_controller.dart';
import '../failed_registered_dialog/failed_registered_dialog.dart';
import '../failed_registered_dialog/controller/failed_registered_controller.dart';
import '../history_page_clear_all_bottomsheet/history_page_clear_all_bottomsheet.dart';
import '../history_page_clear_all_bottomsheet/controller/history_page_clear_all_controller.dart';
import '../payment_page_succesfully_paying_dialog/payment_page_succesfully_paying_dialog.dart';
import '../payment_page_succesfully_paying_dialog/controller/payment_page_succesfully_paying_controller.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Icons".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iconsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "oneboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "oneboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "oneboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login Actived".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginActivedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " OTP Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpVerificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "13. Succesfully Registered - Dialog".tr,
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              SuccesfullyRegisteredDialog(
                                  Get.put(SuccesfullyRegisteredController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "failed Registered - Dialog".tr,
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              FailedRegisteredDialog(
                                  Get.put(FailedRegisteredController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ai Chat  Page Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiChatPageScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ai Chat  Page Screen Start".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiChatPageScreenStartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ai Chat  Page Screen Start Details ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiChatPageScreenStartDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ai Chat  Page Mic On Screen ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aiChatPageMicOnScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ai Chat  Page Keyboard Actived ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiChatPageKeyboardActivedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Chat Page Screen Chat Details Generate".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .chatPageScreenChatDetailsGenerateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page Screen Start".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageScreenStartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat Page Screen Question Chat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatPageScreenQuestionChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat Page Screen Question Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatPageScreenQuestionDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page AI+ Quote & poetry".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageAiQuotePoetryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "AI Asistent Page Chat Details Generates".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .aiAsistentPageChatDetailsGeneratesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page Art Image".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageArtImageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page Art Image Start".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageArtImageStartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "AI Asistent Page Art Image Select Style".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .aiAsistentPageArtImageSelectStyleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "AI Asistent Page Art Image Select Style Actived"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .aiAsistentPageArtImageSelectStyleActivedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "AI Asistent Page Succes Generate Image".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .aiAsistentPageSuccesGenerateImageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "AI Asistent Page Succes Generate Image Change Style - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .aiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page Download Image".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageDownloadImageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page Reach Js".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageReachJsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page Reach Js Start".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageReachJsStartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "AI Asistent Page Reach Js Start Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .aiAsistentPageReachJsStartDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AI Asistent Page Limit Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aiAsistentPageLimitScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History Page Empty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.historyPageEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History Page Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.historyPageDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History Page Delet History".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.historyPageDeletHistoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "History Page Clear All - BottomSheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              HistoryPageClearAllBottomsheet(
                                  Get.put(HistoryPageClearAllController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Page Notifications".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profilePageNotificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Page Chose Plan".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profilePageChosePlanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Page Chose Plan Actived".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profilePageChosePlanActivedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Page Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Page Screen Actived".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentPageScreenActivedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Page Input Card ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentPageInputCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Page Input Card Actived".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentPageInputCardActivedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Payment Page Succesfully Paying - Dialog".tr,
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              PaymentPageSuccesfullyPayingDialog(Get.put(
                                  PaymentPageSuccesfullyPayingController()))),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
