import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:portfolio/barRules.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
    required this.currentPage,
    required this.carouselController,
  }) : super(key: key);

  final int currentPage;
  final CarouselController carouselController;

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700;

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return Container();
    }
    return Container(
      width: 100,
      color: Colors.white,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              carouselController.animateToPage(0);
            },
            child: SideBarDesign(
              text: "HOME",
              currentPage: currentPage,
              page: 0,
            ),
          ),
          GestureDetector(
            onTap: () {
              carouselController.animateToPage(1);
            },
            child: SideBarDesign(
              text: "EXPERIENCE",
              currentPage: currentPage,
              page: 1,
            ),
          ),
          GestureDetector(
            onTap: () {
              carouselController.animateToPage(2);
            },
            child: SideBarDesign(
              text: "COMPETENCE",
              currentPage: currentPage,
              page: 2,
            ),
          ),
        ],
      ),
    );
  }
}