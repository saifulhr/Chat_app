
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/date_time_utils.dart';
import 'package:flutter/material.dart';

class SenderMessage extends StatelessWidget {
  final String text;
  final DateTime? time;

  const SenderMessage({
    super.key,
    required this.text,
    this.time,
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
                bottomLeft: Radius.circular(AllSizes.borderRadiusLg),
                bottomRight: Radius.circular(AllSizes.borderRadiusLg),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: AllColors.primaryColor,
                fontFamily: 'Caros',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              time != null ? formatTime(time!) : '',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 8,
              ),
            ),
          ),
          SizedBox(height: 4,),
        ],
      ),
    );
  }
}