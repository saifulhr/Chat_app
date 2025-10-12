import 'package:chat_app/helpers/device_helpers.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/view/message/widgets/name_and_message.dart';
import 'package:chat_app/view/message/widgets/time_and_message_count.dart';
import 'package:flutter/material.dart';

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
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Profile
                      Row(
                        children: [
                          // Profile Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(31),
                            child: Image.asset(
                              AllImages.profileImage,
                              width: 52,
                              height: 52,
                              fit: BoxFit.cover,
                            ),
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
