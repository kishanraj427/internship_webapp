import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship_webapp/screens/home/footer.dart';
import 'package:internship_webapp/screens/home/header.dart';
import 'package:internship_webapp/screens/home/services.dart';
import 'package:internship_webapp/screens/home/training_internship.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/strings.dart';
import 'package:internship_webapp/src/text_style.dart';
import 'package:internship_webapp/utilities/common_utility.dart';

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




