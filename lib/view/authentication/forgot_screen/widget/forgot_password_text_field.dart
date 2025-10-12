import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTextField extends StatelessWidget {
  const ForgotPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: AllText.lbText,
        hintText: AllText.hinText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.email_outlined),
      ),
    );
  }
}
