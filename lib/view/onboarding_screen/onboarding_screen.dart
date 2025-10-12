import 'package:chat_app/common/widgets/Default_Button/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/appdivider/or_divider.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/signup_screen/signup_screen.dart';
import 'package:chat_app/view/onboarding_screen/widgtes/default_log_in.dart';
import 'package:chat_app/view/onboarding_screen/widgtes/onboarding_background_page_and_text.dart';
import 'package:chat_app/view/onboarding_screen/widgtes/signup_social_icon_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      //Onboarding Background Page and Text
      body: OnboardingBackgroundPageAndText(
        child: Column(
          children: [
            //Social Icon Items like Fb , Google Or Apple
            SignupSocialIconItems(),
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //This is the divider
            OrDivider(
                fieldColor: AllColors.fieldColor,
                dividerTextColor: AllColors.dividerTextColor),

            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //Custom Elevated Button
            CustomElevatedButton(
              text: AllText.signupTileText1,
              ontap: () {
                Get.to(()=> SignupScreen());
              },
            ),

            SizedBox(
              height: 46,
            ),
            //Default Log In Section
            DefaultLogIn()
          ],
        ),
      ),
    );
  }
}
