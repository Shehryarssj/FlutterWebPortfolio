import 'package:flutter/material.dart';
import 'package:portfolio/widgets/heading.dart';
import 'package:portfolio/widgets/icons_row.dart';
import 'package:portfolio/widgets/subheading.dart';

class ContactMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Heading(
            title: 'CONTACT',
            size: 60,
          ),
          Container(
            alignment: Alignment.center,
            width: screenWidth - 20,
            child: Subheading(
              title: "\nI would love to work on you next great project",
              size: 16,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Image.asset('assets/images/11.1.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "\nLET'S TALK!",
                    style: TextStyle(
                      wordSpacing: 3,
                      color: Colors.white70,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                      fontSize: 32,
                      decoration: TextDecoration.none,
                      letterSpacing: 4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'shehryar1.ssj@gmail.com',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          IconsRow(size: 30),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
