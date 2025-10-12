import 'package:chat_app/bottom_nav_bar.dart';
import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/or_divider.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_arrow_icon.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_main_text.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/log_in_screen/widgets/forgot_password.dart';
import 'package:chat_app/view/authentication/log_in_screen/widgets/log_in_social_media_icon.dart';
import 'package:chat_app/view/authentication/log_in_screen/widgets/log_in_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomArrowIcon(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomMainText(
                title: AllText.loginTitleText1,
                subtitle: AllText.loginTitleText2),
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //Log In Social Media Icon
            LogInSocialMediaIcon(),
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //This is the Divider Section
            OrDivider(
                fieldColor: AllColors.fieldColor,
                dividerTextColor: AllColors.textSecondaryColor),
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //this is textfield section
            LogInTextField(),
            SizedBox(
              height: 170,
            ),
            CustomElevatedButton(
              text: 'Log in',
              ontap: () {
                Get.to(() => BottomNavBar());
              },
              backgroundColor: AllColors.btnEnableColor,
              textColor: AllColors.primaryColor,
            ),
            SizedBox(
              height: AllSizes.spaceBtwItems,
            ),

            //Forgot Password Section
            ForgotPassword(),
          ],
        ),
      ),
    );
  }
}
