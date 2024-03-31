import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/payment_page_succesfully_paying_controller.dart';

class PaymentPageSuccesfullyPayingDialog extends StatelessWidget {
  PaymentPageSuccesfullyPayingDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentPageSuccesfullyPayingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          child: SingleChildScrollView(
            child: _buildPopUpRegist(),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPopUpRegist() {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 232.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 52.v,
      ),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
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
                            imagePath:
                                ImageConstant.imgCheckmarkOnerrorcontainer,
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
                  imagePath: ImageConstant.imgStar12,
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 19.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar22,
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
          SizedBox(height: 26.v),
          Text(
            "lbl_successfully".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 25.v),
          Opacity(
            opacity: 0.5,
            child: SizedBox(
              width: 253.h,
              child: Text(
                "msg_your_order_was".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallOnErrorContainer.copyWith(
                  height: 1.70,
                ),
              ),
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            text: "lbl_back_to_home".tr,
            margin: EdgeInsets.symmetric(horizontal: 37.h),
          ),
        ],
      ),
    );
  }
}
