import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          frameItemModelObj.cute!.value,
          style: TextStyle(
            color: (frameItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.onErrorContainer.withOpacity(1)
                : appTheme.blueGray300,
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (frameItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray800,
        selectedShadowColor: appTheme.blueGray80054,
        shadowColor: appTheme.blueGray80054,
        elevation: 2,
        selectedColor: theme.colorScheme.primary,
        shape: (frameItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
        onSelected: (value) {
          frameItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
