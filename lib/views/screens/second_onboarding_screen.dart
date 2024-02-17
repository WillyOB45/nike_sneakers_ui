import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_sneakers_ui/views/screens/root_page.dart';
import 'package:nike_sneakers_ui/views/widget/my_button.dart';
import 'package:lottie/lottie.dart';

class SecondOnboardingScreen extends StatefulWidget {
  const SecondOnboardingScreen({super.key});

  @override
  State<SecondOnboardingScreen> createState() => _SecondOnboardingScreenState();
}

class _SecondOnboardingScreenState extends State<SecondOnboardingScreen> {
// naviagte to root page

  navigateToRootPage() async {
    Get.offAll(const RootPage(), transition: Transition.cupertino);
    Get.snackbar("Welcome to  NIKE sneakers shop", "",
        duration: const Duration(seconds: 6),
        forwardAnimationCurve: Curves.bounceInOut,
        backgroundColor: Colors.grey,
        colorText: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            // image
            SizedBox(
              child: LottieBuilder.asset(
                "assets/lottieimage.json",
                height: 200,
                width: 400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // heading
            Text(
              "Just Do It",
              style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: (30)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Brand New Sneakers and Custom Kicks Made With Premnium quality.",
              style:
                  GoogleFonts.lato(color: Colors.grey.shade600, fontSize: (20)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(onTap: () => navigateToRootPage(), text: "Shop Here"),
          ],
        ),
      ),
    );
  }
}
