import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qent/pages/first_board.dart';
import 'package:qent/pages/second_board.dart';
import 'package:qent/widgets/circle_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,

                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: <Widget>[FirstBoard(), SecondBoard()],
              ),
            ),
          ],
        ),

        Positioned(
          height: MediaQuery.of(context).size.height * 1.66,
          left: MediaQuery.of(context).size.width * 0.45,
          child: Row(
            children: [
              CircelIndicator(isActive: index == 0),
              Gap(10),
              CircelIndicator(isActive: index == 1),
            ],
          ),
        ),
      ],
    );
  }
}
