import 'package:chat_app/utils/all_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomArrowIcon extends StatelessWidget {
  const CustomArrowIcon({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 5),
          child: TextButton(
            onPressed: () {
              Get.back();
            },
            child: Image.asset(
              AllImages.arrowIcon,
              height: 15,
              width: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: child,
          ),
        ),
      ],
    );
  }
}
