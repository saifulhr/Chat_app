import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class SenderMessage extends StatelessWidget {
  const SenderMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(AllSizes.borderRadiusLg),
            decoration: BoxDecoration(
              color: AllColors.userConPrimaryColor,
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
              "I'm good, thanks! You?",
              style: TextStyle(
                  color: AllColors.primaryColor,
                  fontFamily: 'Caros',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 4),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Text(
              "10:32 AM",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
