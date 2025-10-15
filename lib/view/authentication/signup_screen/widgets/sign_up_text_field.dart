import 'package:chat_app/common/widgets/custom_head_text/custom_text_feild.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class SignUpTextfield extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const SignUpTextfield({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          labelText: AllText.yourNameText,
          controller: nameController,
        ),
        const SizedBox(height: AllSizes.spaceBtwSections),
        CustomTextField(
          labelText: AllText.youremailText,
          controller: emailController,
        ),
        const SizedBox(height: AllSizes.spaceBtwSections),
        CustomTextField(
          obscureText: true,
          labelText: AllText.passwordText,
          controller: passwordController,
        ),
        const SizedBox(height: AllSizes.spaceBtwSections),
        CustomTextField(
          obscureText: true,
          labelText: AllText.confirmPasswordText,
          controller: confirmPasswordController,
        ),
      ],
    );
  }
}
