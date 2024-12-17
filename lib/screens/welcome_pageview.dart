import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/providers/numbers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePageView extends ConsumerWidget {
  const WelcomePageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = PageController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                ref.read(currentPageProvider.notifier).state = index;
              },
              reverse: false,
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Welcome')],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('What you can do here')],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Lets get started'),
                    GestureDetector(
                      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('shut up lil nigga'))),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 60),
            child: SmoothPageIndicator(
              onDotClicked: (index) {
                pageController.jumpToPage(index); // Jump to the selected page
                ref.read(currentPageProvider.notifier).state =
                    index; // Update the page index in the provider
              },
              controller: pageController,
              count: 3,
              effect: const WormEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  strokeWidth: 3,
                  paintStyle: PaintingStyle.stroke),
            ),
          )
        ],
      ),
    );
  }
}
