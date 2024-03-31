import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/history_controller.dart';
import 'models/history_model.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({Key? key})
      : super(
          key: key,
        );

  HistoryController controller = Get.put(HistoryController(HistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray900,
          child: Column(
            children: [
              _buildFrame1(),
              SizedBox(height: 38.v),
              _buildContent(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
  Widget _buildContent() {
    return Column(
      children: [
        _buildFrame(
          learningFastCan: "msg_learning_fast_can2".tr,
        ),
        SizedBox(height: 15.v),
        _buildFrame(
          learningFastCan: "msg_learning_fast_can2".tr,
        ),
        SizedBox(height: 15.v),
        Container(
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
                    bottom: 13.v,
                  ),
                  child: Text(
                    "msg_create_coding_header".tr,
                    style: CustomTextStyles.bodySmallOnErrorContainer_1,
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                width: 26.h,
                margin: EdgeInsets.symmetric(vertical: 10.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.v),
        _buildFrame(
          learningFastCan: "msg_write_the_best_quote2".tr,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame({required String learningFastCan}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                top: 16.v,
                bottom: 13.v,
              ),
              child: Text(
                learningFastCan,
                style: CustomTextStyles.bodySmallOnErrorContainer_1.copyWith(
                  color: theme.colorScheme.onErrorContainer,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            width: 26.h,
            margin: EdgeInsets.symmetric(vertical: 10.v),
          ),
        ],
      ),
    );
  }
}
