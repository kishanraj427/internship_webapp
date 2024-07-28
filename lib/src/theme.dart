// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_webapp/src/constants.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/palettes.dart';

class AppTheme {
  static ThemeData getTheme() {
    var isDark = false;
    return ThemeData(
      primaryColor: Palette.appColor,
      brightness: isDark ? Brightness.dark : Brightness.light,
      fontFamily: 'Inter',
      timePickerTheme: TimePickerThemeData(
          dialBackgroundColor: isDark ? Palette.dark2 : Palette.whiteColor,
          helpTextStyle: TextStyle(color: Palette.textColor),
          backgroundColor: isDark ? Palette.dark6 : Palette.whiteColor),
      dividerColor: isDark ? Palette.grey70 : Palette.grey15,
      scaffoldBackgroundColor: Palette.backgroundColor,
      dialogBackgroundColor: isDark ? Palette.dark2 : Palette.whiteColor,
      unselectedWidgetColor: Palette.grey50,
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: isDark ? Palette.dark2 : Palette.primary,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light),
          iconTheme: IconThemeData(color: Palette.primary),
          backgroundColor: Palette.appBar,
          elevation: 0,
          surfaceTintColor: Palette.transparent,
          toolbarTextStyle: TextStyle(
              color: Palette.whiteColor,
              fontSize: Dimens.Subtitle2,
              fontWeight: FontWeight.w500),
          titleTextStyle: TextStyle(
              color: isDark ? Palette.whiteColor : Palette.dark6,
              fontSize: Dimens.Headline2,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500),
          actionsIconTheme: IconThemeData(color: Palette.primary)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Palette.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstant.borderRadius)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: Palette.primary),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstant.borderRadius)),
            backgroundColor: isDark ? Palette.dark4 : Palette.whiteColor,
            padding:
                const EdgeInsets.only(bottom: 4, left: 8, right: 8, top: 4),
            minimumSize: const Size(70, 30)),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Palette.primary,
        primary: Palette.primary,
        onPrimary: Palette.whiteColor,
        surface: Palette.primary,
        onSurface: Palette.textColor,
        brightness: isDark ? Brightness.dark : Brightness.light,
      ),
      popupMenuTheme: PopupMenuThemeData(
          color: isDark ? Palette.dark6 : Palette.whiteColor,
          textStyle: TextStyle(color: Palette.textColor)),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: isDark ? Palette.dark6 : Palette.whiteColor),
      cardTheme: CardTheme(
          color: Palette.whiteColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstant.borderRadius))),
      dialogTheme: DialogTheme(
          backgroundColor: isDark ? Palette.dark2 : Palette.whiteColor),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Palette.transparent,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isDark ? Palette.grey60 : Palette.grey30, width: 1.0),
            borderRadius: BorderRadius.circular(AppConstant.borderRadius)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.primary, width: 1.0),
            borderRadius: BorderRadius.circular(AppConstant.borderRadius)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.errorColor, width: 1.0),
            borderRadius: BorderRadius.circular(AppConstant.borderRadius)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.errorColor, width: 1.0),
            borderRadius: BorderRadius.circular(AppConstant.borderRadius)),
        labelStyle: TextStyle(
            color: Palette.grey50,
            fontWeight: FontWeight.w400,
            fontSize: Dimens.Body1),
      ),
    );
  }
}
