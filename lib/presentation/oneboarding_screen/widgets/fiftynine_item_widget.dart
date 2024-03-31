import '../models/fiftynine_item_model.dart';
import '../controller/oneboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';

// ignore: must_be_immutable
class FiftynineItemWidget extends StatelessWidget {
  FiftynineItemWidget(
    this.fiftynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftynineItemModel fiftynineItemModelObj;

  var controller = Get.find<OneboardingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_welcome_chat_gepete".tr,
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 9.v),
        Container(
          width: 239.h,
          margin: EdgeInsets.only(right: 36.h),
          child: Text(
            "msg_we_are_the_best".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMediumGray400.copyWith(
              height: 1.70,
            ),
          ),
        ),
      ],
    );
  }
}
