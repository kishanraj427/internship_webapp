import 'package:flutter/material.dart';

class Palette {
  static Color appColor = const Color(0xFF5231BD);
  static Color appColor10 = const Color(0xFF784FFF);
  static Color appColorBG = const Color(0xFFDACEFF);
  static Color blackColor = const Color(0xFF000000);
  static Color grey300 = const Color(0xFFD6D6D6);
  static Color primary10 = const Color(0xFF3377CE);
  static const grey400 = Color(0xFF9E9E9E);
  static Color headingTextColor = const Color(0xFF999999);
  static Color errorColor = const Color(0xFFdc4e42);
  static Color transparent = Colors.transparent;
  static const dark4 = Color(0xFF2F2F2F);
  static const dark2 = Color(0xFF2A2A2A);
  static const dark6 = Color(0xFF333333);
  static const warningColor = Color(0xFFF7D365);
  static Color stepsTitleBackGroundColor = const Color(0xFFf8f8f8);
  static Color highLight = const Color(0xFF2E2E2E);
  static Color red = const Color(0xFFef4444);
  static Color primary = const Color(0xFF3377CE);
  static Color primaryBG = const Color.fromARGB(123, 186, 216, 255);
  static Color appBar = const Color(0xFFFFFFFF);
  static Color backgroundColor = const Color(0xFFffffff);
  static Color cardBgColor = whiteColor;
  static Color surface1 = const Color(0xFF2E2E2E);
  static Color fab = const Color(0xFF3377CE);
  static Color label = const Color(0xFF888888);
  static Color value = Colors.white70; //Color(0xFFFFFFFF);
  static Color border =
      const Color.fromARGB(179, 135, 135, 135); //Color(0xFFFFFFFF);
  static Color active = const Color(0xFF3377CE);
  static Color textColor = Colors.white;
  static Color whiteColor = Colors.white;
  static Color iconColor = Colors.white;
  static Color divider = Colors.white12; //Color(0xFF2E2E2E);
  static Color disabled = Colors.white54;
  static Color chip = const Color(0xFF2E2E2E);
  static Color bottomNav = const Color(0xFF2E2E2E);
  static Color shadow = Colors.black12;
  static Color headingColor = Colors.black;
  static Color grey60 = const Color(0xFF666666);
  static Color grey50 = const Color(0xFF808080);
  static Color grey40 = const Color(0xFF999999);
  static Color grey30 = const Color(0xFFB3B3B3);
  static Color grey20 = const Color(0xFFCCCCCC);
  static Color grey10 = const Color(0xFFE5E5E5);
  static Color grey12 = const Color(0xFFE0E0E0);
  static Color lightGray = const Color(0xFFF8F8F8);
  static Color mediumGray = const Color.fromARGB(179, 236, 236, 236);
  static Color dialogBg = const Color(0xFF272727);
  static const transparentColor = Color(0xB2000000);
  static const sessionExpiredCardColor = Color(0xFFFEECE9);
  static const sessionExpiredCardBorderColor = Color(0xFFF59987);
  static Color primaryColorOpacity20 = primary.withOpacity(0.2);
  static const pendingSyncStepColor = Color(0xFFFAC800);
  static const yellowBG = Color.fromARGB(60, 239, 220, 163);
  static const redBG = Color.fromARGB(59, 243, 159, 140);
  static const completed = Color(0xFF42C277); //previous 55CB86
  static const greenBG = Color.fromARGB(64, 159, 247, 196);
  static Color grey70 = const Color(0xFF4C4C4C);
  static const Color grey15 = Color(0xFFE0E0E0);
  static Color barrierColor = Colors.black26;
  static Color inProgress = const Color(0xFF6366F1);
  static Color purpleBG = const Color.fromARGB(91, 180, 181, 245);

  static List<Color> graphColors = [
    Palette.primary,
    const Color(0xFF00B6B3),
    const Color(0xFFFFBB3C),
    const Color(0xFFFF6E6E),
    const Color(0xFFe54304),
    const Color(0xFF985EFF),
    const Color(0xFF4A148C),
    const Color(0xFF2196F3),
  ];

  static List<Color> graphBodyColors = [
    Palette.primary.withOpacity(0.1),
    const Color(0xFF00B6B3).withOpacity(0.1),
    const Color(0xFFFFBB3C).withOpacity(0.1),
    const Color(0xFFFF6E6E).withOpacity(0.1),
    const Color(0xFFe54304).withOpacity(0.1),
    const Color(0xFF985EFF).withOpacity(0.1),
    const Color(0xFF4A148C).withOpacity(0.1),
    const Color(0xFF2196F3).withOpacity(0.1),
  ];

  static getTextColor({bool? isDark}) {
    if (isDark == true) {
      return whiteColor;
    }
    return blackColor;
  }

  static getSubTextColor({bool? isDark}) {
    if (isDark == true) {
      return grey12;
    }
    return grey70;
  }

  static setColor(bool isDark) {
    if (isDark) {
      highLight = const Color(0xFF2E2E2E);
      primary = const Color(0xFF3384EB);
      appBar = const Color(0xFF2E2E2E);
      backgroundColor = const Color(0xFF121212);
      cardBgColor = const Color(0xFF232323);
      surface1 = const Color(0xFF2E2E2E);
      value = Colors.white70; //Color(0xFFFFFFFF);
      border = const Color.fromARGB(179, 135, 135, 135);
      active = const Color(0xFF3384EB);
      textColor = Colors.white;
      iconColor = Colors.white;
      divider = Colors.white12; //Color(0xFF2E2E2E);
      disabled = Colors.white54;
      lightGray = const Color.fromARGB(141, 54, 54, 54);
      mediumGray = const Color.fromARGB(233, 36, 36, 36);
      chip = const Color(0xFF2E2E2E);
      bottomNav = const Color(0xFF2E2E2E);
      headingColor = Colors.white;
      stepsTitleBackGroundColor = const Color(0xFF2E2E2E);
      dialogBg = const Color(0xFF272727);
    } else {
      primary = const Color(0xFF3377CE);
      appBar = const Color(0xFFFFFFFF);
      backgroundColor = const Color(0xFFffffff);
      cardBgColor = Colors.white;
      lightGray = const Color(0xFFF8F8F8);
      surface1 = const Color(0xFFfafafa);
      value = Colors.black54;
      border = const Color.fromARGB(179, 182, 182, 182);
      active = const Color(0xFF3377CE);
      mediumGray = const Color.fromARGB(179, 236, 236, 236);
      disabled = const Color(0xFFD6D6D6);
      textColor = Colors.black87;
      iconColor = Colors.black87;
      divider = Colors.black12;
      chip = const Color(0xFFD6D6D6);
      bottomNav = Colors.white;
      highLight = const Color(0xFFdaf0ff);
      dialogBg = Colors.white;
      headingColor = Colors.black;
      stepsTitleBackGroundColor = const Color(0xFFf8f8f8);
    }
  }
}
