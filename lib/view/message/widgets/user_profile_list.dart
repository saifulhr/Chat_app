import 'package:chat_app/controller/user_controller.dart';
import 'package:chat_app/utils/all_border_colors.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/view/message_details/message_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileList extends StatelessWidget {
  UserProfileList({super.key});
  final controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final users = controller.userList;
      return SizedBox(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final borderColor =
                AllBorderColors.profileBorders[user.borderColorIndex ?? 0];

            return GestureDetector(
              onTap: () {
                Get.to(() => MessageDetailsScreen(
                      receiverUserId: user.uid ?? '',
                      receiverUserName: user.name ?? '',
                      receiverUserPhotoUrl: user.photoUrl ?? '',
                      receiverUserStatus: user.status ?? 'offline',
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 13),
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: borderColor, width: 2),
                        color: AllColors.primaryBlackColor,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  (user.photoUrl != null &&
                                          user.photoUrl!.isNotEmpty)
                                      ? user.photoUrl!
                                      : AllImages.profileImage,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          if (user.status == 'active')
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 12,
                                height: 12,
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
                    ),
                    const SizedBox(height: 6),
                    Text(
                      (user.name?.split(' ').first ?? ''),
                      style: const TextStyle(
                        color: AllColors.primaryColor,
                        fontSize: 12,
                        fontFamily: 'Caros',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
