import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:internship_webapp/src/palettes.dart';
import 'package:internship_webapp/utilities/common_utility.dart';
import 'package:lottie/lottie.dart';

class SearchResource extends StatefulWidget {
  const SearchResource({super.key});

  @override
  State<SearchResource> createState() => _SearchResourceState();
}

class _SearchResourceState extends State<SearchResource> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // CachedNetworkImage(
          //   imageUrl:
          //       "https://images.pexels.com/photos/461940/pexels-photo-461940.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          //   imageBuilder: (context, imageProvider) => Image(
          //     image: imageProvider,
          //     height: screenSize.height,
          //     width: screenSize.width,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Lottie.asset("assets/search_bg.json",
              height: screenSize.height,
              width: screenSize.width,
              frameRate: const FrameRate(30),
              fit: BoxFit.cover,
              repeat: true),
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                height: screenSize.height,
                width: screenSize.width,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      width: CommonUtility.showWebView(context)
                          ? screenSize.width * 0.5
                          : screenSize.width * 0.8,
                      child: Text(
                          "Search your Internship Certificate by your Registration number",
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    color: Palette.blackColor.withOpacity(0.5),
                                    blurRadius: 3,
                                    offset: const Offset(2, 2))
                              ],
                              color: Palette.whiteColor,
                              fontWeight: FontWeight.w800,
                              fontSize: CommonUtility.showWebView(context)
                                  ? 30
                                  : 20)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: CommonUtility.showWebView(context)
                          ? screenSize.width * 0.5
                          : screenSize.width * 0.8,
                      height: 65,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Palette.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 5,
                                blurStyle: BlurStyle.outer,
                                color: Palette.grey20)
                          ],
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        cursorColor: Palette.blackColor,
                        style: TextStyle(
                            color: Palette.blackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                        decoration: InputDecoration(
                            hintText: "Search...",
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                "assets/search.gif",
                                height: 35,
                                width: 35,
                              ),
                            ),
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            hoverColor: Palette.whiteColor,
                            fillColor: Palette.whiteColor),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
                      color: Palette.whiteColor,
                    )),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Download Certificate",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Palette.blackColor.withOpacity(0.5),
                            blurRadius: 3,
                            offset: const Offset(2, 2))
                      ],
                      color: Palette.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: CommonUtility.showWebView(context) ? 25 : 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
