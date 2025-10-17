import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController controller;
  final List<Map<String, String>> data;
  final ValueChanged<int> onPageChanged;

  const OnboardingPageView({
    super.key,
    required this.controller,
    required this.data,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: data.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        final page = data[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              page['image']!,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),

            /// المؤشر أسفل الصورة
            SmoothPageIndicator(
              controller: controller,
              count: data.length,
              effect: const SlideEffect(
                activeDotColor: Color(0xffBB9408),
                dotColor: Color(0xffE0DED7),
                dotHeight: 15,
                dotWidth: 15,
                spacing: 6,
              ),
            ),
            const SizedBox(height: 40),

            Text(
              page['title']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              page['subtitle']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xff0F0C01),
                height: 1.4,
              ),
            ),
          ],
        );
      },
    );
  }
}
