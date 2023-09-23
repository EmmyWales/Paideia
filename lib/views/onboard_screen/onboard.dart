import 'package:flutter/material.dart';
import 'package:paideia/utils/colors.dart';

import '../../class/onboard.dart';
import '../../widgets/text_widget.dart';
import '../authentication/login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 5,
            ),
            Container(
              height: 320,
              width: 300,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                      width: 300,
                      child: Image.asset(
                          'assets/${onboardAssets[index].imagePath}.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BaseText(
                      text: onboardAssets[index].header,
                      alignText: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < onboardAssets.length; i++)
                  i == index ? circleIndicator(true) : circleIndicator(false)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                index == 2
                    ? const Center()
                    : TextButton(
                        onPressed: () {
                          setState(() => index = 2);
                        },
                        child: BaseText(
                          text: "SKIP",
                          color: AppColor.black,
                          size: 18,
                          weight: FontWeight.w600,
                        ),
                      ),
                TextButton(
                  onPressed: () {
                    if (index == 2) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Login()));
                    } else {
                      setState(() => index++);
                    }
                  },
                  child: BaseText(
                    text: index == 2 ? "GET STARTED" : "NEXT",
                    color: AppColor.black,
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget circleIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 10,
      width: 10,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isActive ? AppColor.primary : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
