import 'package:flutter/material.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/palettes.dart';

class TextStyles {
  static TextStyle appBarActionStyle = TextStyle(
      fontSize: Dimens.sm + 1,
      color: Palette.getTextColor(),
      fontWeight: FontWeight.w500);

  static TextStyle buttonTextStyle = TextStyle(
      fontSize: Dimens.sm + 1,
      color: Palette.whiteColor,
      fontWeight: FontWeight.w500);

  static TextStyle messageTitleStyle(bool isWeb) {
    return TextStyle(
        fontSize: isWeb ? Dimens.threeXl : Dimens.xl,
        color: Palette.getTextColor(),
        fontWeight: FontWeight.w700);
  }

  static TextStyle messageDescriptionStyle = TextStyle(
      fontSize: Dimens.sm + 1,
      color: Palette.getSubTextColor(),
      fontWeight: FontWeight.w500);

  static TextStyle cardTitleStyle(bool isWeb) {
    return TextStyle(
        fontSize: isWeb ? Dimens.lg : Dimens.base,
        color: Palette.getTextColor(),
        fontWeight: FontWeight.w600);
  }

  static TextStyle cardDescriptionStyle = TextStyle(
      fontSize: Dimens.xs,
      color: Palette.getTextColor(),
      fontWeight: FontWeight.w500);

  static TextStyle serviceCardTitleStyle(bool isWeb) {
    return TextStyle(
        fontSize: isWeb ? Dimens.lg : Dimens.base,
        color: Palette.getTextColor(),
        fontWeight: FontWeight.w600);
  }

  static TextStyle serviceCardDescriptionStyle = TextStyle(
      fontSize: Dimens.xs,
      color: Palette.getTextColor(),
      fontWeight: FontWeight.w500);
}
