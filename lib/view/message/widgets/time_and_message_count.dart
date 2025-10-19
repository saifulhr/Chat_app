import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:chat_app/utils/all_colors.dart';

class TimeAndMessageCount extends StatelessWidget {
  final DateTime? time;
  final int unreadCount;

  const TimeAndMessageCount({
    super.key,
    this.time,
    required this.unreadCount,
  });

  String _getFormattedTime() {
    if (time == null) return '';
    final now = DateTime.now();
    final diff = now.difference(time!);

    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} mins ago';
    if (diff.inHours < 24) return '${diff.inHours} hrs ago';
    return DateFormat('dd MMM').format(time!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          _getFormattedTime(),
          style: const TextStyle(
            fontSize: 12,
            color: AllColors.textSecondaryColor,
          ),
        ),
        const SizedBox(height: 7),
        if (unreadCount > 0)
          Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
              color: AllColors.contPrimaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                unreadCount.toString(),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AllColors.primaryColor,
                  fontFamily: 'Caros',
                ),
              ),
            ),
          )
        else
          const SizedBox(height: 23),
      ],
    );
  }
}
