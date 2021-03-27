import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_button.dart';

class LandingPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      color: Colors.black,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: FadeInImage(
              placeholder: AssetImage('assets/images/place_holder.jpg'),
              fadeInDuration: Duration(milliseconds: 700),
              image: AssetImage('assets/images/1.1.jpg'),
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I AM\nSHEHRYAR',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 2,
                      height: screenWidth * 0.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white10,
                            Colors.white,
                            Colors.white10
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'An Engineer & Student',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        title: 'RÉSUMÉ',
                        url:
                            'https://drive.google.com/file/d/1JlAHbBZzj5hLoeu0e7CbYMhKPetBBSTi/view?usp=sharing',
                        height: 35,
                        width: 120,
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        title: 'PORTFOLIO',
                        height: 35,
                        width: 120,
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        title: 'CONTACT',
                        height: 35,
                        width: 120,
                        fontSize: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
