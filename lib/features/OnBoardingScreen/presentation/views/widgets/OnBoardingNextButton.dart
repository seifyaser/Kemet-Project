import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingNextButton extends StatelessWidget {
  final bool isLastPage;
  final PageController controller;

  const OnboardingNextButton({
    super.key,
    required this.isLastPage,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffB58D1B),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(16),
        ),
        onPressed: () {
          if (isLastPage) {
            GoRouter.of(context).pushReplacement('/started');
          } else {
            controller.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
