import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship_webapp/screens/home/home_screen.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/text_style.dart';
import 'package:internship_webapp/utilities/common_utility.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    // String imageURL =
    //     "https://images.pexels.com/photos/19670/pexels-photo.jpg?auto=compress&cs=tinysrgb";
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: CommonUtility.showWebView(context)
          ? screenSize.height * 0.4
          : screenSize.height * 0.55,
      width: screenSize.width,
      child: Stack(
        children: [
          SizedBox(
            height: CommonUtility.showWebView(context)
                ? screenSize.height * 0.4
                : screenSize.height * 0.55,
            width: screenSize.width,
            child: const Image(
                fit: BoxFit.cover, image: AssetImage('assets/sky.jpg')),
          ),
          Container(
            height: CommonUtility.showWebView(context)
                  ? screenSize.height * 0.4
                  : screenSize.height * 0.55,
            width: screenSize.width,
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white.withOpacity(0.3)])),
            padding: const EdgeInsets.all(Dimens.base),
            child: BackdropFilter(
              filter: ImageFilter.blur(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenSize.width,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment:
                                CommonUtility.showWebView(context)
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Fusion Flow PVT. LTD.',
                                style: TextStyles.serviceCardTitleStyle(
                                    CommonUtility.showWebView(context)),
                              ),
                              const SizedBox(
                                height: Dimens.base,
                              ),
                              SizedBox(
                                width: CommonUtility.showWebView(context)
                                    ? screenSize.width * 0.22
                                    : null,
                                child: const Text(
                                  'Partner with Fusion Flow and unlock the full potential of technology to propel your business forward. Let\'s embark on a journey of innovation, growth, and success together.',
                                  textAlign: TextAlign.justify,
                                  maxLines: 5,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment:
                                CommonUtility.showWebView(context)
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.center,
                            children: [
                              if (!CommonUtility.showWebView(context))
                                const SizedBox(
                                  height: Dimens.base,
                                ),
                              Text(
                                'Quick Links',
                                style: TextStyles.serviceCardTitleStyle(
                                    CommonUtility.showWebView(context)),
                              ),
                              const SizedBox(
                                height: Dimens.base,
                              ),
                              InkWell(
                                onTap: () {
                                  globalScroll.animateTo(0,
                                      duration:
                                          const Duration(milliseconds: 1000),
                                      curve: Curves.easeInCirc);
                                },
                                child: const Text(
                                  'Home',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'About',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Contact',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  globalScroll.animateTo(1350,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeInCirc);
                                },
                                child: const Text(
                                  'Services',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  globalScroll.animateTo(750,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeInCirc);
                                },
                                child: const Text(
                                  'Training & Internship',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment:
                                CommonUtility.showWebView(context)
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.center,
                            children: [
                              if (!CommonUtility.showWebView(context))
                                const SizedBox(
                                  height: Dimens.base,
                                ),
                              Text(
                                'Important Links',
                                style: TextStyles.serviceCardTitleStyle(
                                    CommonUtility.showWebView(context)),
                              ),
                              const SizedBox(
                                height: Dimens.base,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Legal',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Business',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Partners',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Terms and Conditions',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment:
                                CommonUtility.showWebView(context)
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.center,
                            children: [
                              if (!CommonUtility.showWebView(context))
                                const SizedBox(
                                  height: Dimens.base,
                                ),
                              Text(
                                "Let's connect",
                                style: TextStyles.serviceCardTitleStyle(
                                    CommonUtility.showWebView(context)),
                              ),
                              const SizedBox(
                                height: Dimens.base,
                              ),
                              Wrap(
                                spacing: 8,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/linkedin.svg",
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/facebook.svg",
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/instagram.svg",
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/twitter.svg",
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/youtube.svg",
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: Dimens.base,
                    ),
                    if (CommonUtility.showWebView(context))
                      SizedBox(
                        width: screenSize.width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Copyright © 2024 Fusion Flow',
                              style: TextStyles.messageDescriptionStyle,
                            ),
                            if (CommonUtility.showWebView(context)) ...[
                              Text(
                                '',
                                style: TextStyles.messageDescriptionStyle,
                              ),
                              Text(
                                '',
                                style: TextStyles.messageDescriptionStyle,
                              ),
                              Text(
                                '',
                                style: TextStyles.messageDescriptionStyle,
                              ),
                              Text(
                                '',
                                style: TextStyles.messageDescriptionStyle,
                              ),
                              Text(
                                '',
                                style: TextStyles.messageDescriptionStyle,
                              )
                            ],
                            Text(
                              'Powered by Fusion Flow',
                              style: TextStyles.messageDescriptionStyle,
                            ),
                          ],
                        ),
                      )
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
