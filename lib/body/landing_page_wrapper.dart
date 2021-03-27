import 'package:flutter/material.dart';
import 'package:portfolio/landing_page/landing_page.dart';
import 'package:portfolio/landing_page/landing_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: LandingPage(),
      mobile: LandingPageMobile(),
    );
  }
}
