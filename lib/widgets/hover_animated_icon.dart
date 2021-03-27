import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';

class HoverAnimatedIcon extends StatelessWidget {
  final double size;
  final icon;
  HoverAnimatedIcon({this.size, this.icon});
  @override
  Widget build(BuildContext context) {
    return HoverAnimatedContainer(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      hoverDecoration: BoxDecoration(
        border: Border.all(width: 5, color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: FaIcon(icon, color: Colors.white, size: size),
      ),
    );
  }
}
