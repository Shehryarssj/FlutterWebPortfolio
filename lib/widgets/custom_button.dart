import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

class CustomButton extends StatelessWidget {
  final String title;
  final String url;

  final double height, width, fontSize;
  CustomButton({this.title, this.url, this.height, this.width, this.fontSize});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: HoverAnimatedContainer(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.white54, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        hoverDecoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontFamily: 'Montserrat',
              decoration: TextDecoration.none,
              letterSpacing: 4,
            ),
          ),
        ),
      ),
      onTap: () {
        if (url == null) {
          scrollToSection(
              section: title,
              controller: context.read<ScrollController>(),
              position: screenHeight);
        } else {
          openNewWindow(url: url);
        }
      },
    );
  }
}

void scrollToSection(
    {String section, ScrollController controller, double position}) {
  if (section == 'PORTFOLIO') {
    controller.animateTo(
      position,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 500),
    );
  } else {
    controller.animateTo(
      controller.position.maxScrollExtent,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 500),
    );
  }
}

void openNewWindow({String url}) {
  html.window.open(url, 'new tab');
}
