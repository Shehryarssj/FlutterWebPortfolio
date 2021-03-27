import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_button.dart';

import 'category.dart';

class ProjectCardMobile extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final String url;
  final List<Category> categories;
  ProjectCardMobile(
      {this.image, this.categories, this.text, this.title, this.url});
  List<Widget> getRows() {
    List<Widget> rows = [];
    List<Category> children = [];
    int i = 0;
    for (var item in categories) {
      children.add(item);
      i += 1;
      if (i % 2 == 0 || i == categories.length) {
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

    return Container(
      color: Colors.transparent,
      width: screenWidth * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.45,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 2,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Text(
                  text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
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
          SizedBox(width: 20),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/' + image),
            ),
          )
        ],
      ),
    );
  }
}
