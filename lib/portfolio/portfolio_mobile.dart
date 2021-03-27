import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/arrow_button.dart';
import 'package:portfolio/widgets/category.dart';
import 'package:portfolio/widgets/heading.dart';
import 'package:portfolio/widgets/project_card_mobile.dart';
import 'package:portfolio/widgets/subheading.dart';
import 'package:portfolio/data.dart';

List<ProjectCardMobile> projects = [
  ProjectCardMobile(
    image: '6.png',
    url: alphaReaderUrl,
    categories: [
      Category(title: 'Flutter', size: 12),
      Category(title: 'SQFLite', size: 12),
      Category(title: 'Flask', size: 12),
      Category(title: 'Python', size: 12),
      Category(title: 'API Integration', size: 12),
    ],
    text: alphaReaderText,
    title: 'Alpha Reader',
  ),
  ProjectCardMobile(
    image: '7.png',
    url: climaUrl,
    categories: [
      Category(title: 'Flutter', size: 12),
      Category(title: 'API Integration', size: 12),
    ],
    text: climaText,
    title: 'Clima',
  ),
  ProjectCardMobile(
    image: '8.png',
    url: flashChatUrl,
    categories: [
      Category(title: 'Flutter', size: 12),
      Category(title: 'Firebase', size: 12),
      Category(title: 'Cloud FireStore', size: 12),
    ],
    text: flashChatText,
    title: 'FlashChat',
  ),
];

class PortfolioMobile extends StatefulWidget {
  @override
  _PortfolioMobileState createState() => _PortfolioMobileState();
}

class _PortfolioMobileState extends State<PortfolioMobile> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
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
            ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Heading(title: 'PORTFOLIO', size: 60),
          Container(
            alignment: Alignment.center,
            width: screenWidth - 20,
            child: Subheading(
              title:
                  "Take a look at some of my selected projects showcased below\n",
              size: 16,
            ),
          ),
          SizedBox(height: 40),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/10.png', width: screenWidth * 0.8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ArrowButton(
                    size: 14,
                    onTapAction: goPrevious,
                    icon: Icons.arrow_back_sharp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: screenWidth * 0.70,
                      height: screenWidth,
                      child: CarouselSlider(
                        carouselController: _controller,
                        options: CarouselOptions(
                            initialPage: 0,
                            height: screenWidth,
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            }),
                        items: projects,
                      ),
                    ),
                  ),
                  ArrowButton(
                    onTapAction: goNext,
                    icon: Icons.arrow_forward_sharp,
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
          DotsIndicator(
            dotsCount: 3,
            position: _currentIndex.toDouble(),
            decorator: DotsDecorator(
              activeSize: Size.square(16),
              color: Colors.white,
              activeColor: Colors.red[400],
            ),
          ),
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
