import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_arrow_icon.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_main_text.dart';
import 'package:chat_app/view/authentication/otp_screen/otp_screen.dart';
import 'package:chat_app/view/authentication/signup_screen/widgets/sign_up_text_field.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:get/route_manager.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: CustomArrowIcon(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomMainText(
              title: AllText.signupTileText1,
              subtitle: AllText.signupTileText2,
            ),
            const SizedBox(height: 60),
            SignUpTextfield(),
            SizedBox(
              height: 111,
            ),
            CustomElevatedButton(
              text: AllText.createanaccount,
              ontap: () {
               Get.to(()=>OtpScreen());
              },
              backgroundColor: AllColors.btnEnableColor,
              textColor: AllColors.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
