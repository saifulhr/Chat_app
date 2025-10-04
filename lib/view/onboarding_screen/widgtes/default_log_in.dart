import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/log_in_screen/log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultLogIn extends StatelessWidget {
  const DefaultLogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(()=>LogInScreen());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AllText.onbordinganotherText,
            style: TextStyle(
                color: AllColors.onBordingScreeniconBorderColor,
                fontSize: AllSizes.fontSizeSm),
          ),
          Text(
            AllText.onbordingLogText,
            style: TextStyle(
                color: AllColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: AllSizes.fontSizeSm),
          )
        ],
      ),
    );
  }
}
