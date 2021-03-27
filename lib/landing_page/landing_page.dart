import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_button.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/place_holder.jpg'),
            fadeInDuration: Duration(milliseconds: 700),
            image: AssetImage('assets/images/1.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I AM\nSHEHRYAR',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        wordSpacing: 8,
                        fontFamily: 'Montserrat',
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: 5,
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Colors.white10,
                            Colors.white,
                            Colors.white10
                          ])),
                    ),
                    Text(
                      'An Engineer & Student',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        wordSpacing: 4,
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        title: 'RÉSUMÉ',
                        url:
                            "https://drive.google.com/file/d/1JlAHbBZzj5hLoeu0e7CbYMhKPetBBSTi/view?usp=sharing",
                        fontSize: 16,
                        width: 150,
                        height: 45,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      CustomButton(
                        title: 'PORTFOLIO',
                        fontSize: 16,
                        width: 150,
                        height: 45,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      CustomButton(
                        title: 'CONTACT',
                        fontSize: 16,
                        width: 150,
                        height: 45,
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
