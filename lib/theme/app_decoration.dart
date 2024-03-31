import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray80001,
      );
  static BoxDecoration get fillBluegray700 => BoxDecoration(
        color: appTheme.blueGray700,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.blueGray800,
        boxShadow: [
          BoxShadow(
            color: appTheme.blue90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlue90011 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.blue90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray80054,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray80054 => BoxDecoration(
        color: appTheme.blueGray800,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray80054,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA70021,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA70021 => BoxDecoration(
        color: appTheme.redA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA70021,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA700211 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA70021,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoAE => BoxDecoration(
        color: appTheme.gray90002,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA1001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );

  // Shadow decorations
  static BoxDecoration get shadow => BoxDecoration(
        color: appTheme.blueGray800,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder98 => BorderRadius.circular(
        98.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder107 => BorderRadius.circular(
        107.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get roundedBorder59 => BorderRadius.circular(
        59.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    