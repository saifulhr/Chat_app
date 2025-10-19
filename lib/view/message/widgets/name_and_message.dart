import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class NameAndMessage extends StatelessWidget {
  final String userName;
  final String? status;
  final String lastMessage;

  const NameAndMessage({
    super.key,
    required this.userName,
    this.status,
    required this.lastMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: AllSizes.fontSizeLg,
            color: AllColors.primaryBlackColor,
            fontFamily: 'Caros',
          ),
        ),
        const SizedBox(height: 2),
        Text(
          lastMessage,
          style: TextStyle(
              fontSize: 12, color: Colors.grey[700], fontFamily: 'Caros'),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}
