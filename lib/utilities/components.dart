// ignore_for_file: must_be_immutable

import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_webapp/src/dimens.dart';
import 'package:internship_webapp/src/palettes.dart';
import 'package:internship_webapp/src/text_style.dart';
import 'package:internship_webapp/utilities/common_utility.dart';

class FeatureCard extends StatelessWidget {
  IconData iconData;
  String title;
  String description;
  double? elevation;
  FeatureCard(
      {super.key,
      this.elevation,
      required this.iconData,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Palette.cardBgColor,
        elevation: elevation ?? 0,
        child: Container(
          width: CommonUtility.showWebView(context)
              ? (screenSize.width * 0.85) / 3
              : (screenSize.width * 0.9),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Palette.cardBgColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Palette.appColorBG),
                  child: Icon(
                    iconData,
                    color: Palette.appColor10,
                    size: Dimens.twoXl,
                  )),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyles.cardTitleStyle(
                    CommonUtility.showWebView(context)),
              ),
              const SizedBox(height: 10),
              Text(description, style: TextStyles.cardDescriptionStyle),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  Widget icon;
  String title;
  String description;
  double? elevation;
  ServiceCard(
      {super.key,
      this.elevation,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white.withOpacity(0.25),
        elevation: elevation ?? 0,
        child: BackdropFilter(
          filter: ImageFilter.blur(),
          child: Container(
            width: CommonUtility.showWebView(context)
                ? (screenSize.width * 0.8) / 3
                : (screenSize.width * 0.9),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon,
                const SizedBox(height: 10),
                Text(
                  title,
                  textAlign: TextAlign.justify,
                  style: TextStyles.serviceCardTitleStyle(
                      CommonUtility.showWebView(context)),
                ),
                const SizedBox(height: 10),
                Text(description,
                    textAlign: TextAlign.center,
                    style: TextStyles.serviceCardDescriptionStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnMouseHover extends StatefulWidget {
  final Function(bool isHovered) builder;
  const OnMouseHover({super.key, required this.builder});

  @override
  State<OnMouseHover> createState() => _OnMouseHoverState();
}

class _OnMouseHoverState extends State<OnMouseHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.builder(isHovered),
        transform: getTransform(),
      ),
    );
  }

  getTransform() {
    final hoveredTransformed = Matrix4.identity()
      ..translate(-3, -3, 0)
      ..scale(1.025);
    return isHovered == true ? hoveredTransformed : Matrix4.identity();
  }

  onEntered(bool isEntered) {
    if (mounted) {
      setState(() {
        isHovered = isEntered;
      });
    }
  }
}
