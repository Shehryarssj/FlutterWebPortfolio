import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  final double size;
  Heading({this.title, this.size});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '< ',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white38,
            fontSize: size,
            fontWeight: FontWeight.w100,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: size / 2,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            fontFamily: 'Montserrat',
          ),
        ),
        Text(
          ' >',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white38,
            fontSize: size,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
