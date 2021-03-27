import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_button.dart';

import 'category.dart';

class ProjectCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final String url;
  final List<Category> categories;
  ProjectCard({this.image, this.categories, this.text, this.title, this.url});
  List<Widget> getRows() {
    List<Widget> rows = [];
    List<Category> children = [];
    int i = 0;
    for (var item in categories) {
      children.add(item);
      i += 1;
      if (i % 3 == 0 || i == categories.length) {
        rows.add(Row(
          children: children,
          mainAxisAlignment: MainAxisAlignment.start,
        ));
        children = [];
      }
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.transparent,
      width: screenWidth * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  child: Column(
                    children: getRows(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      title: 'VIEW CODE',
                      url: url,
                      height: 35,
                      width: 120,
                      fontSize: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/' + image),
            ),
          )
        ],
      ),
    );
  }
}
