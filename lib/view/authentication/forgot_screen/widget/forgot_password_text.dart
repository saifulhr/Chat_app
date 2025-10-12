import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      AllText.forgotPasswordtext,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: AllColors.textSecondaryColor,
          fontSize: AllSizes.fontSizeSm,
          fontFamily: "Caros"),
    ));
  }
}
