import 'package:flutter/material.dart';
import 'package:kemetvision/features/OnBoardingScreen/presentation/views/widgets/OnBoardingNextButton.dart';
import 'package:kemetvision/features/OnBoardingScreen/presentation/views/widgets/OnBoardingPageView.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/slide1.svg',
      'title': 'AI That Helps You More',
      'subtitle':
          'Stay one step ahead — our AI suggests the best places based on your interests.'
    },
    {
      'image': 'assets/slide2.svg',
      'title': 'Book in Seconds',
      'subtitle':
          'Easily book your tickets online through the app, no waiting or hassle.'
    },
    {
      'image': 'assets/slide3.svg',
      'title': 'Explore with Smart Maps',
      'subtitle':
          'Let the map guide you! Find nearby attractions and plan your route easily.'
    },
    {
      'image': 'assets/slide4.svg',
      'title': 'Your journey starts with respect',
      'subtitle': 'Follow the guidelines and make every visit better.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F6F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
          
              Align(
                alignment: const Alignment(1.1, -0.9),
                child: Visibility(
                  visible: !isLastPage,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: TextButton(
                      onPressed: () =>
                          _controller.jumpToPage(onboardingData.length - 1),
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),

            
              Expanded(
                child: OnboardingPageView(
                  controller: _controller,
                  data: onboardingData,
                  onPageChanged: (index) {
                    setState(() =>
                        isLastPage = index == onboardingData.length - 1);
                  },
                ),
              ),

              
              OnboardingNextButton(
                isLastPage: isLastPage,
                controller: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


