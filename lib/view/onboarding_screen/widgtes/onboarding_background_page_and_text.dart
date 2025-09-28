import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class OnboardingBackgroundPageAndText extends StatelessWidget {
  const OnboardingBackgroundPageAndText({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AllImages.onboardingBackgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo , Splash Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AllImages.onboardingCIconImage,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 6),
                Text(
                  AllText.splashScreenText,
                  style: TextStyle(
                    color: AllColors.primaryColor,
                    fontSize: AllSizes.fontSizeSm,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AllSizes.spaceBtwSections),

            //Rich Text
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: AllText.onboardingTitle1,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AllSizes.fontSizeXl,
                      color: AllColors.primaryColor,
                    ),
                  ),
                  TextSpan(
                    text: AllText.onboardingTitle2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AllSizes.fontSizeXl,
                      color: AllColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AllSizes.spaceBtwItems),

            // Subtitle
            Text(
              AllText.onboardingTitle3,
              style: TextStyle(
                color: AllColors.subtitleTExtColor,
                fontSize: AllSizes.fontSizeMd,
              ),
            ),

            const SizedBox(height: 38),

            child,
          ],
        ),
      ),
    );
  }
}
