import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_arrow_icon.dart';
import 'package:chat_app/helpers/device_helpers.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/otp_screen/widgets/another_text_on_screen.dart';
import 'package:chat_app/view/authentication/otp_screen/widgets/verification_screen_text.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: CustomArrowIcon(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Verification Page Screen Image
            Image.asset(
              AllImages.emailVerificatin,
              width: DeviceHelpers.getScreenWidth(context) * 1,
              height: DeviceHelpers.getScreenHeight(context) * .3,
            ),
            //Verification screen Text
            VerificationScreenText(),
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //Varification Screen Button
            CustomElevatedButton(
              text: AllText.openEmailApp,
              ontap: () {},
              backgroundColor: AllColors.btnEnableColor,
              textColor: AllColors.primaryColor,
            ),
            SizedBox(
              height: 155,
            ),
            //Another Text On Screen
            AnotherTextOnScreen()
          ],
        ),
      ),
    );
  }
}