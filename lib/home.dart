import 'package:flutter/material.dart';
import 'package:portfolio/body/body.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListenableProvider(
      create: (_) => ScrollController(),
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              width: screenWidth,
              height: screenHeight,
              child: Stack(alignment: Alignment.topCenter, children: [
                FadeInImage(
                  placeholder: AssetImage('assets/images/place_holder.jpg'),
                  fadeInDuration: Duration(milliseconds: 700),
                  image: AssetImage('assets/images/9.jpg'),
                  width: screenWidth,
                  height: screenHeight,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                    ),
                  ),
                ),
                Body(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
