import 'package:ai_chatclone/widgets/custom_icon_button.dart';
import 'package:ai_chatclone/widgets/custom_text_form_field.dart';
import 'models/frame2_item_model.dart';
import '../ai_asistent_page_succes_generate_image_change_style_page/widgets/frame2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_succes_generate_image_change_style_controller.dart';
import 'models/ai_asistent_page_succes_generate_image_change_style_model.dart';

class AiAsistentPageSuccesGenerateImageChangeStylePage extends StatelessWidget {
  AiAsistentPageSuccesGenerateImageChangeStylePage({Key? key})
      : super(
          key: key,
        );

  AiAsistentPageSuccesGenerateImageChangeStyleController controller = Get.put(
      AiAsistentPageSuccesGenerateImageChangeStyleController(
          AiAsistentPageSuccesGenerateImageChangeStyleModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.v),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.h),
                      child: _buildChatImageGenerate(),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 28.h,
                        right: 45.h,
                      ),
                      child: CustomTextFormField(
                        controller: controller.textController,
                        hintText: "msg_change_styles_images".tr,
                        alignment: Alignment.centerLeft,
                        borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                        fillColor: theme.colorScheme.primary,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildFrame1(),
                    SizedBox(height: 30.v),
                    _buildFrame2(),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.h),
                      child: _buildChatImageGenerate(),
                    ),
                    SizedBox(height: 41.v),
                    _buildFrame3(),
                  ],
                ),
              ],
            ),
          ),
        ),
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
                controller: controller.changeStyleController,
                hintText: "lbl_change_style".tr,
                borderDecoration: TextFormFieldStyleHelper.fillErrorContainer,
                fillColor: theme.colorScheme.errorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Obx(
      () => Wrap(
        runSpacing: 9.v,
        spacing: 9.h,
        children: List<Widget>.generate(
          controller.aiAsistentPageSuccesGenerateImageChangeStyleModelObj.value
              .frame2ItemList.value.length,
          (index) {
            Frame2ItemModel model = controller
                .aiAsistentPageSuccesGenerateImageChangeStyleModelObj
                .value
                .frame2ItemList
                .value[index];

            return Frame2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 22.v),
      decoration: AppDecoration.outlineIndigoAE,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomTextFormField(
            width: 259.h,
            controller: controller.playController,
            hintText: "msg_write_to_send_massage".tr,
            hintStyle: CustomTextStyles.bodySmallBluegray30001,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 4.v, 7.h, 4.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgPlay,
                width: 36.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 20.h,
              top: 15.v,
              bottom: 15.v,
            ),
          ),
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL24,
            child: CustomImageView(
              imagePath: ImageConstant.imgPrimeSend,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChatImageGenerate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 140.v),
          child: CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgMingcuteOpenaiFill,
            ),
          ),
        ),
        Container(
          height: 196.v,
          width: 250.h,
          margin: EdgeInsets.only(left: 12.h),
          padding: EdgeInsets.all(18.h),
          decoration: AppDecoration.fillErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage6,
            height: 160.v,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
