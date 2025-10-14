import 'package:chat_app/common/widgets/custom_appbar.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/view/message_details/widgets/message_details_screen_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagedetailsScreenAppbar extends StatelessWidget {
  const MessagedetailsScreenAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      backgroundColor: AllColors.primaryColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Image.asset(
              AllImages.arrowIcon,
              height: 16,
              width: 16,
            ),
          ),
          const SizedBox(width: 12),
          //Message Details Screen Profile Image & Active Now Container
          MEssageDetailsScreenProfile(),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "User",
                style: TextStyle(
                  fontSize: AllSizes.fontSizeMd,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caros',
                  color: AllColors.textPrimaryColor,
                ),
              ),
              Text(
                "Active now",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Caros',
                  color: AllColors.textSecondaryColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                icon: Image.asset(AllImages.cellPone, height: 20, width: 20),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(AllImages.videoCall, height: 30, width: 30),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
