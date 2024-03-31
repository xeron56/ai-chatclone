import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(28.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineIndigoC => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo7000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillPrimaryTL24 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(23.h),
        border: Border.all(
          color: appTheme.indigoA700,
          width: 7.h,
        ),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray800,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillBlueGrayTL24 => BoxDecoration(
        color: appTheme.blueGray700,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillBlueGrayTL21 => BoxDecoration(
        color: appTheme.blueGray80002,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillPrimaryTL32 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(32.h),
      );
}
