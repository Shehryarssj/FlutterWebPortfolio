import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/arrow_button.dart';
import 'package:portfolio/widgets/category.dart';
import 'package:portfolio/widgets/heading.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/subheading.dart';
import 'package:portfolio/data.dart';

List<ProjectCard> projects = [
  ProjectCard(
    image: '6.png',
    url: alphaReaderUrl,
    categories: [
      Category(title: 'Flutter', size: 14),
      Category(title: 'SQFLite', size: 14),
      Category(title: 'Flask', size: 14),
      Category(title: 'Python', size: 14),
      Category(title: 'API Integration', size: 14),
    ],
    text: alphaReaderText,
    title: 'Alpha Reader',
  ),
  ProjectCard(
    image: '7.png',
    url: climaUrl,
    categories: [
      Category(title: 'Flutter', size: 14),
      Category(title: 'API Integration', size: 14),
    ],
    text: climaText,
    title: 'Clima',
  ),
  ProjectCard(
    image: '8.png',
    url: flashChatUrl,
    categories: [
      Category(title: 'Flutter', size: 14),
      Category(title: 'Firebase', size: 14),
      Category(title: 'Cloud FireStore', size: 14),
    ],
    text: flashChatText,
    title: 'FlashChat',
  ),
];

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Colors.black87,
            Colors.black54,
            Colors.transparent,
            Colors.transparent
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Heading(title: "PORTFOLIO", size: 80),
          Subheading(
              title:
                  "Take a look at some of my selected projects showcased below",
              size: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/10.png',
                width: screenWidth * 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ArrowButton(
                    onTapAction: goPrevious,
                    icon: Icons.arrow_back_sharp,
                    size: 22,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        width: screenWidth * 0.4,
                        color: Colors.transparent,
                        child: CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                              initialPage: 0,
                              height: screenHeight * 0.5,
                              viewportFraction: 1.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              }),
                          items: projects,
                        )),
                  ),
                  ArrowButton(
                    size: 22,
                    onTapAction: goNext,
                    icon: Icons.arrow_forward_sharp,
                  ),
                ],
              ),
              Positioned(
                bottom: 30,
                child: DotsIndicator(
                  dotsCount: 3,
                  position: _currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    activeSize: Size.square(16),
                    color: Colors.white,
                    activeColor: Colors.red[400],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  goNext() {
    _controller.nextPage(
      duration: Duration(seconds: 1),
      curve: Curves.easeOutBack,
    );
  }

  goPrevious() {
    _controller.previousPage(
      duration: Duration(seconds: 1),
      curve: Curves.easeOutBack,
    );
  }
}
