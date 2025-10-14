import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class TodayTextDetails extends StatelessWidget {
  const TodayTextDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
            color: AllColors.contColor,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Center(
            child: Text(
          AllText.todayText,
          style: TextStyle(
              color: AllColors.textPrimaryColor,
              fontFamily: 'Caros',
              fontSize: 13,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
