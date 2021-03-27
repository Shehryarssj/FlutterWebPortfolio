import 'package:flutter/material.dart';

class Subheading extends StatelessWidget {
  final String title;
  final double size;
  Subheading({this.title, this.size});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        wordSpacing: 2,
        color: Colors.white,
        fontSize: size,
        decoration: TextDecoration.none,
        fontFamily: 'Montserrat',
      ),
      textAlign: TextAlign.center,
    );
  }
}
