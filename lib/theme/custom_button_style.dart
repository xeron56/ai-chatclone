import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get fillBlueGrayTL32 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray90002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.h),
        ),
        shadowColor: appTheme.blueGray80054,
        elevation: 10,
      );
  static ButtonStyle get outlineBlueGrayTL20 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: appTheme.blueGray80054,
        elevation: 10,
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray30002,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
