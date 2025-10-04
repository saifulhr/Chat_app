import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;

  final String? labelText;

  const CustomTextField({
    super.key,
    this.labelText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(
            labelText!,
            style: TextStyle(
              color: AllColors.textColor,
              fontSize: AllSizes.fontSizeSm,
              fontWeight: FontWeight.w500,
            ),
          ),
        SizedBox(
          height: 44,
          child: TextField(
            obscureText: obscureText,
            style: TextStyle(
              color: AllColors.primaryBlackColor,
              fontSize: AllSizes.fontSizeMd,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              border: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AllColors.fieldColor,
                  width: 1,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AllColors.fieldColor,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
