import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final title;
  final double size;
  Category({this.title, this.size});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, bottom: 10),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.white70)),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(3),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white70,
                fontWeight: FontWeight.w200,
                fontSize: size,
                decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
