import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:nike_sneakers_ui/views/screens/second_onboarding_screen.dart';

class FirstOnboardingScreen extends StatefulWidget {
  const FirstOnboardingScreen({super.key});

  @override
  State<FirstOnboardingScreen> createState() => _FirstOnboardingScreenState();
}

class _FirstOnboardingScreenState extends State<FirstOnboardingScreen> {
// to delay onborading screen for 5sec
  @override
  void initState() {
    navigateToNext();
    super.initState();
  }

  navigateToNext() async {
    await Future.delayed(const Duration(seconds: 10));
    Get.offAll(const SecondOnboardingScreen(), transition: Transition.fadeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // nike logo and animated text
            Image.asset(
              "assets/nikelogo.png",
              height: 150,
              width: 250,
            ),
            const SizedBox(
              width: 10,
            ),
            AnimatedTextKit(repeatForever: true, animatedTexts: [
              WavyAnimatedText("N I K E",
                  textStyle: const TextStyle(
                    fontSize: (30),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
