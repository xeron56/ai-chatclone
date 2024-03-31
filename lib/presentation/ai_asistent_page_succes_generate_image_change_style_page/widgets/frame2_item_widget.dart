import '../models/frame2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

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
          frame2ItemModelObj.cute!.value,
          style: TextStyle(
            color: (frame2ItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.onErrorContainer.withOpacity(1)
                : appTheme.blueGray300,
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (frame2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray800,
        selectedShadowColor: appTheme.blueGray80054,
        shadowColor: appTheme.blueGray80054,
        elevation: 2,
        selectedColor: theme.colorScheme.primary,
        shape: (frame2ItemModelObj.isSelected?.value ?? false)
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
          frame2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
