import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';
import 'package:shaghaf/core/utils/styles.dart';

import 'custom_dots_indicator.dart';
import 'onboarding_page_shape.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  OnBoardingViewBodyState createState() => OnBoardingViewBodyState();
}

class OnBoardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            children: [
              OnboardingPageShape(
                image: 'assets/Frame 1.png', // Add your image asset here
                title: 'Your favorite place to work',
                description: 'In Shaghaf Co-working space, we provide a place that makes you more productive, enjoyable, and comfortable.',
              ),
              OnboardingPageShape(
                image: 'assets/Frame 2.png', // Add your image asset here
                title: 'Delightful open air',
                description: 'You can choose a game to play from the many games we have , sit at a comfortable base, or take pictures in the different places that have been specially made to take beautiful pictures.',
              ),
              OnboardingPageShape(
                image: 'assets/Frame 3.png', // Add your image asset here
                title: 'Choose your favorite room',
                description: 'You can find the right room for your current mood, as we have many rooms that meet all needs, You can move between funny room, training room and meeting room',
              ),
              // Add more pages here if needed
            ],
          ),
          Positioned(
            top: 60,
            left: 328,
            child: TextButton(
              onPressed: () {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
              child:  Text('Skip', style:Styles.textStyle17.copyWith(color: Color(0xffFFFFFF))),
            ),
          ),
          Positioned(
            bottom: 44,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CustomDotsIndicator(currentPage: currentPage),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    if (currentPage == 2) {
                       GoRouter.of(context).push(Approuter.loginViewRoute);
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff20473E)
                    ),
                    child: const Icon(Icons.arrow_forward, color: Colors.white,size: 32,),
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  }



}
