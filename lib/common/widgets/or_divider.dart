import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final Color fieldColor;
  final Color dividerTextColor;

  const OrDivider({
    super.key,
    required this.fieldColor,
    required this.dividerTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 0.5,
            width: 0.5,
            color: fieldColor,
          ),
        ),
        SizedBox(width: 6,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,),
          child: Text(
            AllText.orText,
            style: TextStyle(
              color: dividerTextColor,
              fontWeight: FontWeight.bold,
              fontSize: AllSizes.fontSizeSm,
            ),
          ),
        ),
        SizedBox(width: 6,),
        Expanded(
          child: Container(
            height: 0.5,
            color: fieldColor,
          ),
        ),
      ],
    );
  }
}
