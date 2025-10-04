import 'package:chat_app/common/widgets/custom_head_text/custom_text_feild.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class LogInTextField extends StatelessWidget {
  const LogInTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          labelText: AllText.yourNameText,
        ),
        SizedBox(
          height: AllSizes.spaceBtwSections,
        ),
        CustomTextField(
          labelText: AllText.passwordText,
          obscureText: true,
        ),
      ],
    );
  }
}
