import '../models/fiftyfour_item_model.dart';
import '../controller/oneboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';

// ignore: must_be_immutable
class FiftyfourItemWidget extends StatelessWidget {
  FiftyfourItemWidget(
    this.fiftyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftyfourItemModel fiftyfourItemModelObj;

  var controller = Get.find<OneboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 186.h,
          margin: EdgeInsets.only(right: 52.h),
          child: Text(
            "msg_the_power_of_ai_in".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 11.v),
        SizedBox(
          width: 239.h,
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
