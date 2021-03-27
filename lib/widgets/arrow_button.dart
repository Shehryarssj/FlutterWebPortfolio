import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class ArrowButton extends StatelessWidget {
  final Function onTapAction;
  final double size;
  final IconData icon;
  ArrowButton({this.onTapAction, this.icon, this.size});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: HoverAnimatedContainer(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: Colors.white,
            size: size,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.white54),
        ),
        hoverDecoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.red),
        ),
      ),
      onTap: onTapAction,
    );
  }
}
