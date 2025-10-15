import 'package:chat_app/common/widgets/custom_head_text/custom_text_feild.dart';
import 'package:chat_app/controller/login_controller.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class LogInTextField extends StatelessWidget {
  LogInTextField({
    super.key,
  });
  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: controller.emailController,
          labelText: AllText.yourNameText,
        ),
        SizedBox(
          height: AllSizes.spaceBtwSections,
        ),
        CustomTextField(
          controller: controller.passwordController,
          labelText: AllText.passwordText,
          obscureText: true,
        ),
      ],
    );
  }
}
