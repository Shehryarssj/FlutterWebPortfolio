import 'package:flutter/material.dart';
import 'package:portfolio/body/portfolio_wrapper.dart';
import 'package:provider/provider.dart';
import 'contact_wrapper.dart';
import 'landing_page_wrapper.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: context.read<ScrollController>(),
      children: [
        LandingPageWrapper(),
        PortfolioWrapper(),
        ContactWrapper(),
      ],
    );
  }
}
