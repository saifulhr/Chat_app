import 'package:chat_app/common/widgets/custom_appbar.dart';
import 'package:chat_app/common/widgets/social_icon_container.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class AppbarAllItem extends StatelessWidget {
  const AppbarAllItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      backgroundColor: AllColors.primaryBlackColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Search Icon
          SocialIconContainer(
            icon: AllImages.searchIocn,
            ontap: () {},
            backgroundColor: Colors.transparent,
            borderColor: AllColors.searchIconBorderColor,
            height: 44,
            width: 44,
            iconheight: 22,
            iconwidth: 22,
            iconcolor: AllColors.primaryColor,
          ),

          // Title
          Text(
            AllText.homeText,
            style: TextStyle(
              color: AllColors.primaryColor,
              fontFamily: 'Caros',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),

          //Profile Image
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AllColors.subtitleTExtColor,
              image: DecorationImage(
                image: AssetImage(AllImages.profileImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
