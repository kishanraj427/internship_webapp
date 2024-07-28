import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internship_webapp/src/constants.dart';

class CommonUtility {
  static String generateId(List<String> ids) {
    String key = "0";
    do {
      Random rand = Random();
      key = rand.nextInt(500000).toString();
    } while (ids.contains(key) == true);
    return key;
  }

  static bool showWebView(BuildContext context) {
    if (!kIsWeb) {
      if (MediaQuery.of(context).orientation == Orientation.portrait) {
        return false;
      }
    }
    if (MediaQuery.of(context).size.width > AppConstant.mobileViewWidth) {
      return true;
    }
    return false;
  }
}
