import 'package:flutter/material.dart';
import 'package:chat_app/utils/all_colors.dart';

class MEssageDetailsScreenProfile extends StatelessWidget {
  final String photoUrl;
  final bool isActive;

  const MEssageDetailsScreenProfile({
    super.key,
    required this.photoUrl,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(photoUrl),
          radius: 24,
        ),
        if (isActive)
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
    );
  }
}
