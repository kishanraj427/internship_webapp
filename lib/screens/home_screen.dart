import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/palettes.dart';
import 'package:internship_webapp/src/strings.dart';
import 'package:internship_webapp/src/text_style.dart';
import 'package:internship_webapp/utilities/common_utility.dart';
import 'package:internship_webapp/utilities/components.dart';

ScrollController globalScroll = ScrollController();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: screenSize.width * 0.02),
          child: SvgPicture.asset(
            "assets/applogo.svg",
          ),
        ),
        leadingWidth: 240,
        actions: CommonUtility.showWebView(context)
            ? [
                TextButton(
                  onPressed: () {
                    globalScroll.animateTo(750,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInCirc);
                  },
                  child: Text(
                    Strings.internshipAndTraining.toUpperCase(),
                    style: TextStyles.appBarActionStyle,
                  ),
                ),
                const SizedBox(width: Dimens.fiveXs),
                TextButton(
                  onPressed: () {
                    globalScroll.animateTo(1350,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInCirc);
                  },
                  child: Text(
                    Strings.services.toUpperCase(),
                    style: TextStyles.appBarActionStyle,
                  ),
                ),
                const SizedBox(width: Dimens.fiveXs),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    Strings.resources.toUpperCase(),
                    style: TextStyles.appBarActionStyle,
                  ),
                ),
                const SizedBox(width: Dimens.fiveXs),
                TextButton(
                  onPressed: () {
                    var position = globalScroll.position.maxScrollExtent;
                    globalScroll.animateTo(position,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInCirc);
                  },
                  child: Text(
                    Strings.aboutUs.toUpperCase(),
                    style: TextStyles.appBarActionStyle,
                  ),
                ),
                const SizedBox(width: Dimens.fiveXs),
                TextButton(
                  onPressed: () {
                    var position = globalScroll.position.maxScrollExtent;
                    globalScroll.animateTo(position,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInCirc);
                  },
                  child: Text(
                    Strings.contact.toUpperCase(),
                    style: TextStyles.appBarActionStyle,
                  ),
                ),
                const SizedBox(width: Dimens.fiveXs),
              ]
            : null,
      ),
      body: ListView(
        controller: globalScroll,
        children: const [
          HeaderSection(),
          TrainingInternshipSection(),
          ServicesSection(),
          FooterSection(),
        ],
      ),
    );
  }
}

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
                    width: screenSize.width *
                        (CommonUtility.showWebView(context) ? 0.5 : 1),
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
                          SizedBox(
                            child: Flexible(
                              child: Text(
                                Strings.appMessage,
                                maxLines: 5,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Palette.whiteColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: CommonUtility.showWebView(context)
                                        ? 17
                                        : 15),
                              ),
                            ),
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

class TrainingInternshipSection extends StatelessWidget {
  const TrainingInternshipSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: Dimens.base),
          Text(
            Strings.unlockThePowerOfLearning,
            textAlign: TextAlign.center,
            style: TextStyles.messageTitleStyle(
                CommonUtility.showWebView(context)),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: screenSize.width *
                (CommonUtility.showWebView(context) ? 0.7 : 0.85),
            child: Text(
              Strings.titleDescription,
              textAlign: TextAlign.center,
              style: TextStyles.messageDescriptionStyle,
            ),
          ),
          const SizedBox(height: Dimens.twoXl),
          OnMouseHover(
            builder: (isHovered) => FilledButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Palette.appColor),
                    elevation: MaterialStateProperty.resolveWith(
                        (states) => isHovered ? 10 : 7)),
                onPressed: () {},
                child: SizedBox(
                  width: Dimens.nineXl + 10,
                  height: Dimens.fiveXl + 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.learnMore,
                        style: TextStyles.buttonTextStyle,
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: Dimens.base,
                      )
                    ],
                  ),
                )),
          ),
          const SizedBox(height: Dimens.threeXl),
          Wrap(
            children: [
              OnMouseHover(
                builder: (isHovered) => FeatureCard(
                  iconData: Icons.auto_awesome_outlined,
                  title: Strings.cardTitle1,
                  description: Strings.cardDescription1,
                  elevation: isHovered ? 5 : 3,
                ),
              ),
              OnMouseHover(
                builder: (isHovered) => FeatureCard(
                  iconData: Icons.assured_workload_outlined,
                  title: Strings.cardTitle2,
                  description: Strings.cardDescription2,
                  elevation: isHovered ? 5 : 3,
                ),
              ),
              OnMouseHover(
                builder: (isHovered) => FeatureCard(
                  iconData: Icons.local_police_outlined,
                  title: Strings.cardTitle3,
                  description: Strings.cardDescription3,
                  elevation: isHovered ? 5 : 3,
                ),
              ),
              OnMouseHover(
                builder: (isHovered) => FeatureCard(
                  iconData: Icons.card_membership_outlined,
                  title: Strings.cardTitle4,
                  description: Strings.cardDescription4,
                  elevation: isHovered ? 5 : 3,
                ),
              ),
              OnMouseHover(
                builder: (isHovered) => FeatureCard(
                  iconData: Icons.assessment_outlined,
                  title: Strings.cardTitle5,
                  description: Strings.cardDescription5,
                  elevation: isHovered ? 5 : 3,
                ),
              ),
              OnMouseHover(
                builder: (isHovered) => FeatureCard(
                  iconData: Icons.workspace_premium,
                  title: Strings.cardTitle6,
                  description: Strings.cardDescription6,
                  elevation: isHovered ? 5 : 3,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // String imageURL =
    //     "https://images.pexels.com/photos/1673973/pexels-photo-1673973.jpeg?auto=compress&cs=tinysrgb";
    return Column(
      children: [
        SizedBox(height: CommonUtility.showWebView(context) ? 50 : Dimens.base),
        Text(
          Strings.servicesMessage,
          textAlign: TextAlign.center,
          style:
              TextStyles.messageTitleStyle(CommonUtility.showWebView(context)),
        ),
        SizedBox(height: CommonUtility.showWebView(context) ? 50 : 18),
        Stack(
          children: [
            SizedBox(
              height: CommonUtility.showWebView(context)
                  ? screenSize.height * 0.65
                  : screenSize.height * 0.6,
              width: screenSize.width,
              child: const Image(
                  fit: BoxFit.cover, image: AssetImage('assets/service.jpeg')),
            ),
            Container(
              height: CommonUtility.showWebView(context)
                  ? screenSize.height * 0.65
                  : screenSize.height * 0.6,
              width: screenSize.width,
              decoration: BoxDecoration(
                color: Palette.blackColor.withOpacity(0.35),
              ),
              child: Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Wrap(
                    children: [
                      ServiceCard(
                        icon: SvgPicture.asset("assets/laptop.svg",
                            height: 30, width: 30, fit: BoxFit.cover),
                        title: Strings.softwareDevelopment,
                        description: Strings.softwareDevelopmentMSG,
                      ),
                      ServiceCard(
                        icon: SvgPicture.asset("assets/android.svg",
                            height: 40, width: 40, fit: BoxFit.cover),
                        title: Strings.androidDevelopment,
                        description: Strings.androidDevelopmentMSG,
                      ),
                      ServiceCard(
                        icon: SvgPicture.asset(
                          "assets/web.svg",
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        title: Strings.webDevelopment,
                        description: Strings.webDevelopmentMSG,
                      ),
                      ServiceCard(
                        icon: SvgPicture.asset("assets/design.svg",
                            height: 35, width: 35, fit: BoxFit.cover),
                        title: Strings.applicationDesgine,
                        description: Strings.applicationDesgineMSG,
                      ),
                      ServiceCard(
                        icon: SvgPicture.asset("assets/datascience.svg",
                            height: 30, width: 30, fit: BoxFit.cover),
                        title: Strings.dataScience,
                        description: Strings.dataScienceMSG,
                      ),
                      ServiceCard(
                        icon: SvgPicture.asset("assets/cloud.svg",
                            height: 30, width: 30, fit: BoxFit.cover),
                        title: Strings.cloudAndDevOps,
                        description: Strings.cloudAndDevOpsMSG,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        )
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    // String imageURL =
    //     "https://images.pexels.com/photos/19670/pexels-photo.jpg?auto=compress&cs=tinysrgb";
    Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          height: CommonUtility.showWebView(context)
              ? screenSize.height * 0.4
              : screenSize.height * 0.55,
          width: screenSize.width,
          child: const Image(
              fit: BoxFit.cover, image: AssetImage('assets/sky.jpg')),
        ),
        BackdropFilter(
            filter: ImageFilter.blur(),
            child: Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenSize.width,
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CommonUtility.showWebView(context)
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
                              child: const Flexible(
                                child: Text(
                                  'Partner with Fusion Flow and unlock the full potential of technology to propel your business forward. Let\'s embark on a journey of innovation, growth, and success together.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CommonUtility.showWebView(context)
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
                                    duration: const Duration(milliseconds: 500),
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
                                    duration: const Duration(milliseconds: 500),
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
                          crossAxisAlignment: CommonUtility.showWebView(context)
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
                          crossAxisAlignment: CommonUtility.showWebView(context)
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
            )),
      ],
    );
  }
}
