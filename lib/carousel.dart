import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:portfolio/constants.dart';
import 'package:portfolio/sideBar.dart';
import 'package:portfolio/appBar.dart';
import 'package:portfolio/presentation.dart';



class Site extends StatefulWidget {
  const Site({Key? key}) : super(key: key);

  @override
  _SiteState createState() => _SiteState();
}

class _SiteState extends State<Site> {
  final CarouselController _carouselController = CarouselController();
  int _currentPage = 0;

  void onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentPage = index;
    });
  }

  bool desktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    final double screewidthsize = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: isMobile
          ? PreferredSize(
              child: AppBar(
                title: const Text('Portfolio',),
                centerTitle: true,
                backgroundColor: kPrimaryColor,
                elevation: 0,
                leadingWidth: 100,
              ),
              preferredSize: Size.fromHeight(MediaQuery.of(context).size.height) * 0.08,
            )
          : null,
      drawer: isMobile
          ? Drawer(
              width: screewidthsize / 1.645,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: AppBarPage(
                currentPage: _currentPage,
                carouselController: _carouselController,
              ),
            )
          : null,
      body: Row(
        children: [
          if (desktop(context))
            SideBar(
              currentPage: _currentPage,
              carouselController: _carouselController,
            ),
          Expanded(
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                onPageChanged: onPageChanged,
                height: double.infinity,
                scrollDirection: Axis.vertical,
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
                // enlargeCenterPage: true,
                pageSnapping: true,
                scrollPhysics: const PageScrollPhysics(),
              ),
              items: [
                const ParallaxText(),
                Container(
                  color: kSecondaryLightMoreColor,
                  // decoration: const BoxDecoration(
                  //   gradient: kPrimaryReverseGradientColor,
                  // ),
                  child: const Center(child: Text('Page 2')),
                ),
                Container(
                  color: kSecondaryLightMoreColor,
                  // decoration: const BoxDecoration(
                  //   gradient: kPrimaryGradientColor,
                  // ),
                  child: const Center(child: Text('Page 3')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}