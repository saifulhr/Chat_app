import 'package:chat_app/common/widgets/custom_head_text/custom_text_feild.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class SignUpTextfield extends StatelessWidget {
  const SignUpTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          labelText: AllText.yourNameText,
        ),
        const SizedBox(height: AllSizes.spaceBtwSections),
        const CustomTextField(
          labelText: AllText.youremailText,
        ),
        const SizedBox(height: AllSizes.spaceBtwSections),
        const CustomTextField(
          obscureText: true,
          labelText: AllText.passwordText,
        ),
        const SizedBox(height: AllSizes.spaceBtwSections),
        const CustomTextField(
          obscureText: true,
          labelText: AllText.confirmPasswordText,
        ),
      ],
    );
  }
}
