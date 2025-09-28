import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final TextStyle? textStyle;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.ontap,
    this.width = double.infinity,
    this.height = 48,
    this.backgroundColor = AllColors.primaryColor,
    this.textColor = AllColors.primaryBlackColor,
    this.borderRadius = AllSizes.borderRadiusxtlg,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: ontap,
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                color: textColor,
                fontSize: AllSizes.fontSizeMd,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
