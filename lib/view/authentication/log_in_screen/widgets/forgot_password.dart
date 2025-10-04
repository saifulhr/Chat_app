import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
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
