import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/log_in_screen/log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnotherTextOnScreen extends StatelessWidget {
  const AnotherTextOnScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AllText.alreadyHaveAnAccount,
          style: TextStyle(
            color: AllColors.attachmentIconColor,
            fontFamily: 'Caros',
            fontSize: AllSizes.fontSizeSm,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => LogInScreen());
          },
          child: Text(
            AllText.logInText,
            style: TextStyle(
                color: AllColors.textColor,
                fontWeight: FontWeight.bold,
                fontSize: AllSizes.fontSizeMd),
          ),
        ),
      ],
    );
  }
}
