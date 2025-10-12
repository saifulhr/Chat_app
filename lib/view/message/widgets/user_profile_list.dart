import 'package:chat_app/utils/all_border_colors.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:flutter/material.dart';

class UserProfileList extends StatelessWidget {
  const UserProfileList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AllBorderColors.profileBorders.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Column(
              children: [
                //First Container 
                Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AllBorderColors.profileBorders[index],
                      width: 2,
                    ),
                    color: AllColors.primaryBlackColor,
                  ),
                  //Second Container
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AllImages.profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                //User Name
                Text(
                  'User',
                  style: const TextStyle(
                    color: AllColors.primaryColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
