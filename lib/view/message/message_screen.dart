import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/view/message/widgets/appbar_all_item.dart';
import 'package:chat_app/view/message/widgets/message_screen_white_page.dart';
import 'package:chat_app/view/message/widgets/user_profile_list.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryBlackColor,
      body: Stack(
        children: [
          // Top content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppbarAllItem(),
                const SizedBox(height: 40),
                //User Profile List
                UserProfileList(),
              ],
            ),
          ),

          // White screen
          MessageScreenWhitePage(),
        ],
      ),
    );
  }
}
