import 'package:flutter/material.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/palettes.dart';
import 'package:internship_webapp/src/strings.dart';
import 'package:internship_webapp/src/text_style.dart';
import 'package:internship_webapp/utilities/common_utility.dart';
import 'package:internship_webapp/utilities/components.dart';
import 'dart:html' as html;

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
                    backgroundColor: WidgetStateColor.resolveWith(
                        (states) => Palette.appColor),
                    elevation: WidgetStateProperty.resolveWith(
                        (states) => isHovered ? 10 : 7)),
                onPressed: () async {
                  html.window.open(
                      "https://docs.google.com/forms/d/e/1FAIpQLSc4DbTWNZfQozMkdKwXK7Q8A_1PbmTT7ikdGmnHrgBXqKW9QA/viewform",
                      "Fusion Flow");
                },
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
