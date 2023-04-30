import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:portfolio/barRules.dart';



class AppBarPage extends StatelessWidget {
  const AppBarPage({
    Key? key,
    required this.currentPage,
    required this.carouselController,
  }) : super(key: key);

  final int currentPage;
  final CarouselController carouselController;

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700 &&
      MediaQuery.of(context).size.width > 450;
  bool isMiniMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 450;

  @override
  Widget build(BuildContext context) {

    double screenheightsize = MediaQuery.of(context).size.height;

    return Container(
      child: isMobile(context)
        ? _buildUpMobileBar(screenheightsize)
        : _buildUpMiniMobileBar(screenheightsize)
    );
  }

  Widget _buildUpMobileBar(double screenheightsize) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              carouselController.animateToPage(0);
            },
            child: HeaderBarDesign(
              text: "HOME",
              currentPage: currentPage,
              page: 0,
            ),
          ),
          GestureDetector(
            onTap: () {
              carouselController.animateToPage(1);
            },
            child: HeaderBarDesign(
              text: "EXPERIENCE",
              currentPage: currentPage,
              page: 1,
            ),
          ),
          GestureDetector(
            onTap: () {
              carouselController.animateToPage(2);
            },
            child: HeaderBarDesign(
              text: "COMPETENCE",
              currentPage: currentPage,
              page: 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpMiniMobileBar(double screenheightsize) {
    return Container(
      height: 100,
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