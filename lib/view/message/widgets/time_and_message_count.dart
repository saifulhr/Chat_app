import 'package:chat_app/utils/all_colors.dart';
import 'package:flutter/material.dart';

class TimeAndMessageCount extends StatelessWidget {
  const TimeAndMessageCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          '2 mins ago',
          style: TextStyle(
            fontSize: 12,
            color: AllColors.textSecondaryColor,
          ),
        ),
        const SizedBox(height: 7),
        Container(
          height: 23,
          width: 23,
          decoration: BoxDecoration(
            color: AllColors.contPrimaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: const Text(
              '3',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AllColors.primaryColor,
                  fontFamily: 'Caros'),
            ),
          ),
        ),
      ],
    );
  }
}
