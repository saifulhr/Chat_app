import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/view/message_details/widgets/message_details_screen_appbar.dart';
import 'package:chat_app/view/message_details/widgets/message_input_area.dart';
import 'package:chat_app/view/message_details/widgets/receiver_message.dart';
import 'package:chat_app/view/message_details/widgets/sender_message.dart';
import 'package:chat_app/view/message_details/widgets/today_details.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/utils/all_colors.dart';

class MessageDetailsScreen extends StatelessWidget {
  const MessageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: MessagedetailsScreenAppbar(),
          ),
          SizedBox(
            height: AllSizes.defaultSpace,
          ),
          //On Screen Message Today
          TodayTextDetails(),

          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                // Receiver Message
                ReceiverMessage(),

                SizedBox(
                  height: AllSizes.spaceBtwSections,
                ),

                //  Sender Message
                SenderMessage(),

                const SizedBox(height: 20),
              ],
            ),
          ),

          // Message Input Area
          MessageInputArea(),
        ],
      ),
    );
  }
}