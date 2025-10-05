import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class VerificationScreenText extends StatelessWidget {
  const VerificationScreenText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(AllText.checkEmail,
              style: TextStyle(
                fontFamily: 'Caros',
                fontWeight: FontWeight.bold,
                fontSize: 22,
              )),
          SizedBox(
            height: AllSizes.spaceBtwItems,
          ),
          Text(
            AllText.checkDetails,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AllColors.textSecondaryColor,
                fontFamily: 'Caros',
                fontSize: AllSizes.fontSizeSm),
          ),
        ],
      ),
    );
  }
}
