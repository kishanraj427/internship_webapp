import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/palettes.dart';
import 'package:internship_webapp/src/strings.dart';
import 'package:internship_webapp/utilities/common_utility.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: CommonUtility.showWebView(context)
                ? screenSize.height
                : screenSize.height * 0.55,
            width: screenSize.width * 0.98,
            child: const ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75)),
              child: Image(
                  fit: BoxFit.cover, image: AssetImage('assets/main.jpeg')),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: CommonUtility.showWebView(context)
                ? screenSize.height
                : screenSize.height * 0.55,
            width: screenSize.width * 0.98,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(75)),
              color: Palette.blackColor.withOpacity(0.35),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: CommonUtility.showWebView(context)
                ? screenSize.height
                : screenSize.height * 0.55,
            width: screenSize.width * 0.98,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(75)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  width: screenSize.width * 0.98,
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: (CommonUtility.showWebView(context)
                        ? screenSize.width * 0.5
                        : screenSize.width),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: CommonUtility.showWebView(context)
                              ? Dimens.nineXl
                              : Dimens.fiveXl,
                          right: CommonUtility.showWebView(context)
                              ? 0
                              : Dimens.fiveXl),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.appTitleMgs,
                            maxLines: 2,
                            style: TextStyle(
                                color: Palette.whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: CommonUtility.showWebView(context)
                                    ? 40
                                    : 20),
                          ),
                          SizedBox(
                            height: CommonUtility.showWebView(context)
                                ? Dimens.xl
                                : Dimens.base,
                          ),
                          Text(
                            Strings.appMessage,
                            maxLines: 5,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Palette.whiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: CommonUtility.showWebView(context)
                                    ? 17
                                    : 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
