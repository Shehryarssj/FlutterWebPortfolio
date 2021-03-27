import 'package:flutter/material.dart';
import 'package:portfolio/contact/contact_mobile.dart';
import 'package:portfolio/contact/contact.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Contact(),
      mobile: ContactMobile(),
    );
  }
}
