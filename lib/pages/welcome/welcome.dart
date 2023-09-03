import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ulearn/pages/welcome/notifier/welcome_notifier.dart';
import 'package:ulearn/pages/welcome/widgets.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 30.h),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // Showing our three welcome pages
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _pageController,
                  children: [
                    appOnboardingPage(
                      context,
                      _pageController,
                      index: 1,
                      image: 'reading',
                      title: 'First See Learning',
                      subTitle:
                          'Forget about books, start learning all in one place with Ulearn',
                    ),
                    appOnboardingPage(
                      context,
                      _pageController,
                      index: 2,
                      image: 'man',
                      title: 'Connect With Everyone',
                      subTitle:
                          "Always stay connected with your tutor and friends let's get started",
                    ),
                    appOnboardingPage(
                      context,
                      _pageController,
                      index: 3,
                      image: 'boy',
                      title: 'Always Facinated Learning',
                      subTitle:
                          "Anywhere, anytime. The time is your discretion. So study whenever you want",
                    ),
                  ],
                ),

                // Showing our dot indicator
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: index,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(24, 8),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
