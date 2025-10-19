import 'package:chat_app/controller/user_controller.dart';
import 'package:chat_app/model/message_model.dart';
import 'package:chat_app/services/user_service.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/view/message_details/widgets/message_details_screen_appbar.dart';
import 'package:chat_app/view/message_details/widgets/message_input_area.dart';
import 'package:chat_app/view/message_details/widgets/receiver_message.dart';
import 'package:chat_app/view/message_details/widgets/sender_message.dart';
import 'package:chat_app/view/message_details/widgets/today_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageDetailsScreen extends StatelessWidget {
  final String receiverUserId;
  final String receiverUserName;
  final String receiverUserPhotoUrl;
  final String receiverUserStatus;

  const MessageDetailsScreen({
    super.key,
    required this.receiverUserId,
    required this.receiverUserName,
    required this.receiverUserPhotoUrl,
    required this.receiverUserStatus,
  });

  @override
  Widget build(BuildContext context) {
    final currentUserId = Get.find<UserController>().currentUserId;
    final chatId = UserService().getChatId(currentUserId, receiverUserId);

    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: MessagedetailsScreenAppbar(
              userName: receiverUserName,
              photoUrl: receiverUserPhotoUrl,
              isActive: receiverUserStatus.toLowerCase() == 'active',
            ),
          ),
          SizedBox(height: AllSizes.defaultSpace),
          TodayTextDetails(),

          SizedBox(height: 10),
          Expanded(
            child: StreamBuilder<List<MessageModel>>(
              stream: UserService().getMessages(chatId),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final messages = snapshot.data!;

                if (messages.isEmpty) {
                  return Center(child: Text("No messages yet"));
                }

                return ListView.builder(
                  reverse: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    final isSender = message.senderId == currentUserId;
                    return Column(
                      crossAxisAlignment:
                          isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                      children: [
                        isSender
                            ? SenderMessage(
                                text: message.text,
                                time: message.timestamp,
                              )
                            : ReceiverMessage(
                                text: message.text,
                                time: message.timestamp,
                              ),
                      ],
                    );
                  },
                );
              },
            ),
          ),

          // Message Input Area
          MessageInputArea(
            onSend: (text) async {
              if (text.trim().isEmpty) return;
              await UserService().sendMessage(
                chatId: chatId,
                senderId: currentUserId,
                receiverId: receiverUserId,
                text: text,
              );
            },
          ),
        ],
      ),
    );
  }
}
