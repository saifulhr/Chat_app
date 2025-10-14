import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/view/message_details/widgets/send_text_field.dart';
import 'package:flutter/material.dart';

class MessageInputArea extends StatelessWidget {
  const MessageInputArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AllSizes.md, vertical: AllSizes.lg),
      decoration: const BoxDecoration(
        color: AllColors.contColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Attachment icon
          Image.asset(
            AllImages.clipImage,
            height: AllSizes.iconMd,
            width: AllSizes.iconMd,
            color: AllColors.iconContPrimaryColor,
          ),
          const SizedBox(width: 8),
    
          //TextField container
          SendTextfield(),
    
          const SizedBox(width: AllSizes.spaceBtwItems),
          //Camera Icon Image
          Image.asset(
            AllImages.cameraImage,
            height: AllSizes.iconMd,
            width: AllSizes.iconMd,
            color: AllColors.iconContPrimaryColor,
          ),
          const SizedBox(width: 12),
          //Voice Icon Image
          Image.asset(
            AllImages.voiceImage,
            height: AllSizes.iconMd,
            width: AllSizes.iconMd,
            color: AllColors.iconContPrimaryColor,
          ),
          const SizedBox(width: AllSizes.spaceBtwItems),
          //Send Button icon Image
          Container(
            height: 40,
            width: 40,
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
            )),
          ),
        ],
      ),
    );
  }
}
