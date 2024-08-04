import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/palettes.dart';
import 'package:internship_webapp/src/strings.dart';
import 'package:internship_webapp/src/text_style.dart';
import 'package:internship_webapp/utilities/common_utility.dart';
import 'package:internship_webapp/utilities/components.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  final String imageUrl =
      "https://images.pexels.com/photos/1673973/pexels-photo-1673973.jpeg?auto=compress&cs=tinysrgb";

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                imageBuilder: (context, imageProvider) {
                  return Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    height: CommonUtility.showWebView(context)
                        ? screenSize.height * 0.65
                        : screenSize.height * 0.6,
                    width: screenSize.width,
                  );
                },
              ),
              // child: const Image(
              //     fit: BoxFit.cover, image: AssetImage('assets/service.jpeg')),
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
