import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class SendTextfield extends StatelessWidget {
  const SendTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: AllSizes.md),
        decoration: BoxDecoration(
          color: AllColors.textfieldcontColor,
          borderRadius: BorderRadius.circular(AllSizes.lg),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: "Write your message",
                  hintMaxLines: 1,
                  hintStyle: TextStyle(
                      fontFamily: 'Caros',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AllColors.textSecondaryColor),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10),
                ),
                style:
                    const TextStyle(fontSize: AllSizes.fontSizeSm),
              ),
            ),
            Image.asset(
              AllImages.fileImage,
              height: AllSizes.iconMd,
              width: AllSizes.iconMd,
              color: AllColors.filecontColor,
            )
          ],
        ),
      ),
    );
  }
}
