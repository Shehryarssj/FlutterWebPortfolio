import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

import 'package:portfolio/widgets/hover_animated_icon.dart';

class IconsRow extends StatelessWidget {
  final double size;
  IconsRow({this.size});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: HoverAnimatedIcon(
            size: size,
            icon: FontAwesomeIcons.instagram,
          ),
          onTap: () {
            html.window
                .open("https://www.instagram.com/shehryarssj/", 'new tab');
          },
        ),
        SizedBox(width: size / 2),
        GestureDetector(
          child: HoverAnimatedIcon(
            size: size,
            icon: FontAwesomeIcons.github,
          ),
          onTap: () {
            html.window.open("https://github.com/Shehryarssj/", 'new tab');
          },
        ),
        SizedBox(width: size / 2),
        GestureDetector(
          child: HoverAnimatedIcon(
            size: size,
            icon: FontAwesomeIcons.linkedin,
          ),
          onTap: () {
            html.window.open(
                "https://www.linkedin.com/in/muhammad-shehryar-4b8995192/",
                'new tab');
          },
        )
      ],
    );
  }
}
