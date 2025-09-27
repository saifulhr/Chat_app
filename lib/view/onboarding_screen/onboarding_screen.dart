import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onboard_screen.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/c.png',
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  AllText.splashScreenText,
                  style: TextStyle(
                      color: AllColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 46,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                children: const [
                  TextSpan(
                    text: "Connect friends\n",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 68,
                        color: AllColors.primaryColor),
                  ),
                  TextSpan(
                    text: "easily & quickly",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 68,
                        color: AllColors.primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Our chat app is the perfect way to stay connected with friends and family.',
              style:
                  TextStyle(color: AllColors.subtitleTExtColor, fontSize: 16),
            ),
            SizedBox(
              height: 38,
            ),
          ],
        ),
      ),
    );
  }
}
