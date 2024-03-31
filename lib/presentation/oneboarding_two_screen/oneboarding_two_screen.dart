import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/fiftyeight_item_widget.dart';
import 'models/fiftyeight_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ai_chatclone/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/oneboarding_two_controller.dart';

// ignore_for_file: must_be_immutable
class OneboardingTwoScreen extends GetWidget<OneboardingTwoController> {
  const OneboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              _buildFiftyEight(),
              SizedBox(height: 33.v),
              Obx(
                () => Container(
                  height: 8.v,
                  margin: EdgeInsets.only(left: 10.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.oneboardingTwoModelObj.value
                        .fiftyeightItemList.value.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.blue200,
                      dotHeight: 8.v,
                      dotWidth: 15.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 54.v),
              _buildFrame(),
              SizedBox(height: 45.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 242.h,
                  margin: EdgeInsets.only(
                    left: 41.h,
                    right: 40.h,
                  ),
                  child: Text(
                    "msg_by_continuing".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallGray400.copyWith(
                      height: 1.70,
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
  Widget _buildFiftyEight() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 76.h,
      ),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 137.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex.value = index;
            },
          ),
          itemCount: controller
              .oneboardingTwoModelObj.value.fiftyeightItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            FiftyeightItemModel model = controller
                .oneboardingTwoModelObj.value.fiftyeightItemList.value[index];
            return FiftyeightItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "lbl_skip".tr,
            margin: EdgeInsets.only(right: 5.h),
            buttonStyle: CustomButtonStyles.outlineBlueGray,
            buttonTextStyle: theme.textTheme.titleMedium!,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "lbl_next".tr,
            margin: EdgeInsets.only(left: 5.h),
          ),
        ),
      ],
    );
  }
}
