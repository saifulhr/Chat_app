import 'package:chat_app/view/message_details/message_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_app/controller/message_controller.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/view/message/widgets/name_and_message.dart';
import 'package:chat_app/view/message/widgets/time_and_message_count.dart';

class MessageScreenWhitePage extends StatelessWidget {
  MessageScreenWhitePage({super.key});

  final MessageController controller = Get.put(MessageController());

  // ignore: unused_element
  String _formatTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    final now = DateTime.now();
    final diff = now.difference(dateTime);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} mins ago';
    if (diff.inHours < 24) return '${diff.inHours} hrs ago';
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      height: screenHeight * 0.615,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Obx(() {
            final users = controller.userList;
            if (users.isEmpty) {
              return const Center(child: Text('No users found'));
            }

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                final photoUrl =
                    (user.photoUrl != null && user.photoUrl!.isNotEmpty)
                        ? user.photoUrl!
                        : AllImages.profileImage;
                final isActive = user.status?.toLowerCase() == 'active';

                return GestureDetector(
                  onTap: () {
                    Get.to(() => MessageDetailsScreen(
                          receiverUserId: user.uid!,
                          receiverUserName: user.name ?? '',
                          receiverUserPhotoUrl: user.photoUrl ?? '',
                          receiverUserStatus: user.status ?? '',
                        ));
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(photoUrl),
                                  radius: 28,
                                ),
                                if (isActive)
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: AllColors.primaryColor,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(width: 12),
                            NameAndMessage(
                              userName: user.name ?? 'User',
                              lastMessage: user.lastMessage ?? '',
                            ),
                          ],
                        ),
                        TimeAndMessageCount(
                          time: user.lastMessageTime,
                          unreadCount: user.unreadMessageCount,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
