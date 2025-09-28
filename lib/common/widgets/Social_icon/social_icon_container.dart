import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class SocialIconContainer extends StatelessWidget {
  final String icon;
  final double width;
  final double height;
  final double iconwidth;
  final double iconheight;
  final double borderWidth;
  final Color borderColor;
  final Color backgroundColor;
  final VoidCallback ontap;

  const SocialIconContainer({
    super.key,
    required this.icon,
    this.width = 48,
    this.height = 48,
    this.borderWidth = 1,
    this.borderColor = AllColors.onBordingScreeniconBorderColor,
    this.backgroundColor = AllColors.secondaryColor,
    this.iconwidth = AllSizes.iconMd,
    this.iconheight = AllSizes.iconMd,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: Center(
          child: Image.asset(
            icon,
            width: iconwidth,
            height: iconheight,
          ),
        ),
      ),
    );
  }
}
