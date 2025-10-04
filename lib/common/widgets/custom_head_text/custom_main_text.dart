import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class CustomMainText extends StatelessWidget {
  const CustomMainText({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleSize,
    this.subtitleSize,
    this.titleColor,
    this.subtitleColor,
    this.textAlign = TextAlign.center,
    this.spacing = AllSizes.spaceBtwItems,
  });

  final String title;
  final String subtitle;
  final double? titleSize;
  final double? subtitleSize;
  final Color? titleColor;
  final Color? subtitleColor;
  final TextAlign textAlign;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: titleSize ?? AllSizes.fontSizeMd,
             fontFamily: 'Caros',
             fontWeight: FontWeight.bold,
             color: titleColor ?? AllColors.primaryBlackColor,
            ),
          ),
          SizedBox(height: spacing),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: subtitleSize ?? 13,
              color: subtitleColor ?? AllColors.textSecondaryColor,
              fontFamily: 'Caros',
              fontWeight: FontWeight.w500,
            ),
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
