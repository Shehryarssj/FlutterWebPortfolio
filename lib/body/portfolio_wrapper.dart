import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/portfolio.dart';
import 'package:portfolio/portfolio/portfolio_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class PortfolioWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Portfolio(),
      mobile: PortfolioMobile(),
    );
  }
}
