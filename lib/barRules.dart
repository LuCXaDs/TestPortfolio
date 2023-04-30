import 'package:flutter/material.dart';

import 'package:portfolio/constants.dart';
import 'package:portfolio/animationText.dart';


class SideBarDesign extends StatelessWidget {
  const SideBarDesign(
      {super.key,
      required this.text,
      required this.currentPage,
      required this.page});

  final String text;
  final int currentPage;
  final int page;

  @override
  Widget build(BuildContext context) {
    double screenheightsize = MediaQuery.of(context).size.height;

    return Container(
      height: screenheightsize / 3,
      child: currentPage == page
          ? SideBarAnimation(
              text: text,
              currentPage: currentPage,
            )
          : Container(
              height: screenheightsize / 3,
              color: currentPage == page ? kPrimaryColor : Colors.white,
              child: Center(
                child: Text(
                  text,
                  style: currentPage == page
                      ? const TextStyle(color: Colors.white)
                      : const TextStyle(color: kPrimaryColor),
                ),
              ),
            ),
    );
  }
}

class HeaderBarDesign extends StatelessWidget {
  const HeaderBarDesign(
      {super.key,
      required this.text,
      required this.currentPage,
      required this.page});

  final String text;
  final int currentPage;
  final int page;

  @override
  Widget build(BuildContext context) {
    double screenheightsize = MediaQuery.of(context).size.width / 1.645;

    return Container(
      width: screenheightsize / 3,
      child: currentPage == page
          ? MyAnimation(
              text: text,
              currentPage: currentPage,
            )
          : Container(
              width: screenheightsize / 3,
              color: currentPage == page ? kPrimaryColor : Colors.white,
              // child: ,
              child: Center(
                child: Text(
                  text,
                  style: currentPage == page
                      ? const TextStyle(color: Colors.white)
                      : const TextStyle(color: kPrimaryColor),
                ),
              ),
            ),
    );
  }
}