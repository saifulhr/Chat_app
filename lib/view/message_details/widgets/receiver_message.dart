import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/date_time_utils.dart';
import 'package:flutter/material.dart';

class ReceiverMessage extends StatelessWidget {
  final String text;
  final DateTime? time;

  const ReceiverMessage({
    super.key,
    required this.text,
    this.time,
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
                bottomLeft: Radius.circular(AllSizes.borderRadiusLg),
                bottomRight: Radius.circular(AllSizes.borderRadiusLg),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: AllColors.textPrimaryColor,
                fontFamily: 'Caros',
                fontWeight: FontWeight.w500,
                fontSize: 8,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: AllSizes.sm),
            child: Text(
              time != null ? formatTime(time!) : '',
              style: const TextStyle(
                color: AllColors.textSecondaryColor,
                fontSize: 10,
                fontFamily: 'Caros',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 4,),
        ],
      ),
    );
  }
}