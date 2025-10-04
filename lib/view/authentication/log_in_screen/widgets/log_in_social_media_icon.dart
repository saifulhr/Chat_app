import 'package:chat_app/common/widgets/Social_icon/social_icon_container.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:flutter/material.dart';

class LogInSocialMediaIcon extends StatelessWidget {
  const LogInSocialMediaIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //This is the Facebook Icon Section
        SocialIconContainer(
          icon: AllImages.onboardingFacebookIcon,
          width: 48,
          height: 48,
          iconheight: AllSizes.iconMd,
          iconwidth: AllSizes.iconMd,
          borderWidth: 1,
          ontap: () {},
          backgroundColor: Colors.transparent,
          borderColor: AllColors.textPrimaryColor,
        ),
        SizedBox(
          width: AllSizes.defaultSpace,
        ),
        //This is the Google Icon Section
        SocialIconContainer(
          icon: AllImages.onboardingGoogleIcon,
          width: 48,
          height: 48,
          iconheight: 45,
          iconwidth: 45,
          borderWidth: 1,
          ontap: () {},
          backgroundColor: Colors.transparent,
          borderColor: AllColors.textPrimaryColor,
        ),
        SizedBox(
          width: AllSizes.defaultSpace,
        ),
        //This is the Apple Icon Section
        SocialIconContainer(
          icon: AllImages.onboardingAppleIcon,
          width: 48,
          height: 48,
          iconheight: AllSizes.iconMd,
          iconwidth: 20.22,
          borderWidth: 1,
          ontap: () {},
          backgroundColor: Colors.transparent,
          borderColor: AllColors.textPrimaryColor,
          iconcolor: AllColors.primaryBlackColor,
        ),
      ],
    );
  }
}
