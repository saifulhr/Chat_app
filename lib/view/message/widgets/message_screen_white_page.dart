import 'package:chat_app/helpers/device_helpers.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/view/message/widgets/name_and_message.dart';
import 'package:chat_app/view/message/widgets/time_and_message_count.dart';
import 'package:chat_app/view/message_details/message_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageScreenWhitePage extends StatelessWidget {
  const MessageScreenWhitePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      height: DeviceHelpers.getScreenHeight(context) * 0.615,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => MessageDetailsScreen());
                },
                behavior: HitTestBehavior.translucent,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Profile
                      Row(
                        children: [
                          // Profile Image
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(AllImages.profileImage),
                                radius: 28,
                              ),
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

                          // Name and message
                          NameAndMessage(),
                        ],
                      ),

                      //Time and Message Count
                      TimeAndMessageCount(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
