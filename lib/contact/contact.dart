import 'package:flutter/material.dart';
import 'package:portfolio/widgets/heading.dart';
import 'package:portfolio/widgets/icons_row.dart';
import 'package:portfolio/widgets/subheading.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Heading(title: "CONTACT", size: 100),
          Subheading(
              title: "I would love to work on you next great project",
              size: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/11.1.png', height: screenHeight * 0.7),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "\nLET'S TALK!",
                    style: TextStyle(
                      wordSpacing: 4,
                      color: Colors.white70,
                      fontWeight: FontWeight.w900,
                      fontSize: 44,
                      decoration: TextDecoration.none,
                      letterSpacing: 4,
                      fontFamily: 'Montserrat',
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
                                    fontSize: 30,
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          IconsRow(size: 50),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
