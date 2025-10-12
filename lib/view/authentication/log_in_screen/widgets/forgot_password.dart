import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/forgot_screen/forgot_pass_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=> ForgotPassScreen());
      },
      child: Center(
        child: Text(
          AllText.forgotPasswordText,
          style: TextStyle(
              color: AllColors.textColor,
              fontFamily: 'Caros',
              fontWeight: FontWeight.bold,
              fontSize: AllSizes.fontSizeSm,
              ),
        ),
      ),
    );
  }
}
