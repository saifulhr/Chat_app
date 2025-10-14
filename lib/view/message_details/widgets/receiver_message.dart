import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class ReceiverMessage extends StatelessWidget {
  const ReceiverMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(AllSizes.borderRadiusLg),
            decoration: BoxDecoration(
              color: AllColors.contColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AllSizes.borderRadiusLg),
                topRight: Radius.circular(2),
                bottomLeft:
                    Radius.circular(AllSizes.borderRadiusLg),
                bottomRight:
                    Radius.circular(AllSizes.borderRadiusLg),
              ),
            ),
            child: const Text(
              "Hello! How are you?",
              style: TextStyle(
                color: AllColors.textPrimaryColor,
                fontFamily: 'Caors',
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 4),
          const Padding(
            padding: EdgeInsets.only(left: AllSizes.sm),
            child: Text(
              "10:30 AM",
              style: TextStyle(
                  color: AllColors.textSecondaryColor,
                  fontSize: 10,
                  fontFamily: 'Caros',
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
