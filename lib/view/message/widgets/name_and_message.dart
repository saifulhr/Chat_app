import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class NameAndMessage extends StatelessWidget {
  const NameAndMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'User',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: AllSizes.fontSizeLg,
            color: AllColors.primaryBlackColor,
            fontFamily: 'Caros',
          ),
        ),
        SizedBox(height: 2),
        Text(
          'How are you today?',
          style: TextStyle(
            fontSize: 12,
            color: AllColors.textSecondaryColor,
          ),
        ),
      ],
    );
  }
}
