import 'package:flutter/material.dart';
import 'package:internship_webapp/navigation_routes.dart';
import 'package:internship_webapp/src/constants.dart';
import 'package:internship_webapp/src/theme.dart';
import 'package:internship_webapp/utilities/common_utility.dart';

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    routerDelegate.pushPage(name: Screen.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Fusion Flow",
      debugShowCheckedModeBanner: false,
      key: Key(CommonUtility.generateId([])),
      theme: AppTheme.getTheme(),
      routerDelegate: routerDelegate,
    );
  }
}
