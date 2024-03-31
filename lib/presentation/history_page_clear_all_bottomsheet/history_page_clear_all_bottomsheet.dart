import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/history_page_clear_all_controller.dart';

class HistoryPageClearAllBottomsheet extends StatelessWidget {
  HistoryPageClearAllBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryPageClearAllController controller;

  @override
  Widget build(BuildContext context) {
    return _buildScrollView();
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 30.v,
        ),
        decoration: AppDecoration.shadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder50,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector176,
              height: 3.v,
            ),
            SizedBox(height: 12.v),
            Text(
              "msg_clear_all_history".tr,
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 8.v),
            Divider(
              indent: 23.h,
              endIndent: 23.h,
            ),
            SizedBox(height: 11.v),
            Opacity(
              opacity: 0.5,
              child: Text(
                "msg_are_sure_want_to".tr,
                style: CustomTextStyles.labelLargeOnErrorContainer,
              ),
            ),
            SizedBox(height: 39.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_cancel".tr,
                    margin: EdgeInsets.only(right: 10.h),
                    buttonStyle: CustomButtonStyles.outlineBlueGray,
                    buttonTextStyle: theme.textTheme.titleMedium!,
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_clear_all".tr,
                    margin: EdgeInsets.only(left: 10.h),
                  ),
                ),
              ],
            ),
            SizedBox(height: 42.v),
          ],
        ),
      ),
    );
  }
}
