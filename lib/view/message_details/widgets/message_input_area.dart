import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_app/controller/message_input_controller.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';

class MessageInputArea extends StatelessWidget {
  final Future<void> Function(String text) onSend;

  MessageInputArea({super.key, required this.onSend});

  final MessageInputController controller = Get.put(MessageInputController());

  void sendMessage() async {
    final text = controller.textController.text.trim();
    if (text.isEmpty) return;
    await onSend(text);
    controller.clearInput();
  }

  void onGalleryTap() {}

  void onVoiceTap() {}

  void onFileTap() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AllSizes.md, vertical: AllSizes.lg),
      decoration: const BoxDecoration(
        color: AllColors.contColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(0, 0))
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AllImages.clipImage,
            height: AllSizes.iconMd,
            width: AllSizes.iconMd,
            color: AllColors.iconContPrimaryColor,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                TextField(
                  controller: controller.textController,
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "Write your message",
                    hintStyle: const TextStyle(
                      fontFamily: 'Caros',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AllColors.textSecondaryColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10)
                            .copyWith(right: 48),
                  ),
                  style: const TextStyle(fontSize: AllSizes.fontSizeSm),
                  onSubmitted: (_) => sendMessage(),
                ),
                Positioned(
                  right: 12,
                  child: GestureDetector(
                    onTap: onFileTap,
                    child: Image.asset(
                      AllImages.fileImage,
                      height: AllSizes.iconMd,
                      width: AllSizes.iconMd,
                      color: AllColors.iconContPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Obx(() {
            if (controller.showSendButton) {
              return GestureDetector(
                onTap: sendMessage,
                child: Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(left: 12),
                  decoration: const BoxDecoration(
                    color: AllColors.userConPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      AllImages.sendImage,
                      color: AllColors.primaryColor,
                      height: AllSizes.iconMd,
                      width: AllSizes.iconMd,
                    ),
                  ),
                ),
              );
            } else {
              return Row(
                children: [
                  GestureDetector(
                    onTap: onGalleryTap,
                    child: Image.asset(
                      AllImages.cameraImage,
                      height: AllSizes.iconMd,
                      width: AllSizes.iconMd,
                      color: AllColors.iconContPrimaryColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: onVoiceTap,
                    child: Image.asset(
                      AllImages.voiceImage,
                      height: AllSizes.iconMd,
                      width: AllSizes.iconMd,
                      color: AllColors.iconContPrimaryColor,
                    ),
                  ),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
