import 'package:flutter/material.dart';
import 'package:omotenashi_cafe/presentation/misc/methods.dart';

part 'methods/slider.dart';
part 'methods/indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentSlide = 0;
  final slideController = PageController();

  final sliders = [
    slider(
      xPrimaryBubblePos: -96,
      yPrimaryBubblePos: 682,
      image: 'assets/images/onboarding1.png',
    ),
    slider(
      xPrimaryBubblePos: 209,
      yPrimaryBubblePos: 673,
      image: 'assets/images/onboarding2.png',
    ),
    slider(
      xPrimaryBubblePos: -228,
      yPrimaryBubblePos: 669,
      xSecondaryBubblePos: 206,
      ySecondaryBubblePos: -16,
      image: 'assets/images/logo.png',
    ),
  ];

  @override
  void dispose() {
    slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: slideController,
            onPageChanged: (value) {
              setState(() {
                currentSlide = value;
              });
            },
            children: sliders,
          ),
          Hero(
            tag: 'onboarding-button',
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: (currentSlide != sliders.length - 1)
                  ? [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          sliders.length - 1,
                          (index) => indicator(isActive: currentSlide == index),
                        ),
                      ),
                      verticalSpaces(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton(
                            onPressed: () => slideController.animateToPage(
                              sliders.length - 1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            ),
                            style: OutlinedButton.styleFrom(
                              foregroundColor:
                                  const Color.fromRGBO(53, 178, 116, 1),
                              backgroundColor:
                                  const Color.fromRGBO(255, 255, 255, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              side: BorderSide.none,
                              shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                              elevation: 20,
                            ),
                            child: const Text('Skip'),
                          ),
                          horizontalSpaces(6),
                          ElevatedButton(
                            onPressed: () => slideController.animateToPage(
                              currentSlide + 1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  const Color.fromRGBO(255, 255, 255, 1),
                              backgroundColor:
                                  const Color.fromRGBO(53, 178, 116, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              side: BorderSide.none,
                              shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                              elevation: 20,
                            ),
                            child: const Text('Next'),
                          ),
                          horizontalSpaces(33),
                        ],
                      ),
                      verticalSpaces(52),
                    ]
                  : [
                      Center(
                        child: Container(
                          width: 269,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(38, 202, 125, 1),
                                Color.fromRGBO(78, 228, 137, 1),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // TODO: Navigate to home page
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Get started',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      verticalSpaces(52),
                    ],
            ),
          ),
        ],
      ),
    );
  }
}
