import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:portfolio/constants.dart';


class SideBarAnimation extends StatelessWidget {
  const SideBarAnimation(
      {super.key, required this.text, required this.currentPage}
    );

  final String text;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    double screenheightsize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: currentPage == currentPage ? kPrimaryColor : Colors.white,
      body: Center(
        child: _buildWidget(screenheightsize),
      ),
    );
  }

  Widget _buildWidget(double screenheightsize) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: screenheightsize / 1.1,
          child: AnimatedTextKit(
            repeatForever: false,
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 300),
            animatedTexts: [
              TypewriterAnimatedText(
                text,
                textStyle: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color:
                      currentPage == currentPage ? Colors.white : kPrimaryColor,
                ),
                speed: const Duration(milliseconds: 150),
                textAlign: TextAlign.center,
              ),
            ],
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ],
    );
  }
}

class MyAnimation extends StatelessWidget {
  const MyAnimation({super.key, required this.text, required this.currentPage});

  final String text;
  final int currentPage;
  // MyAnimation(this.text,this.currentPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentPage == currentPage ? kPrimaryColor : Colors.white,
      body: Center(
        child: _buildWidget(),
      ),
    );
  }

  Widget _buildWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 5,
          child: AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(milliseconds: 3000),
            animatedTexts: [
              TypewriterAnimatedText(
                text,
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color:
                      currentPage == currentPage ? Colors.white : kPrimaryColor,
                ),
                speed: const Duration(milliseconds: 100),
                textAlign: TextAlign.center,
              ),
            ],
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ],
    );
  }
}