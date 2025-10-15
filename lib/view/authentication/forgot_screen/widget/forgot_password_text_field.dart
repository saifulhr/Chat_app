import 'package:chat_app/controller/forgot_password_controller.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordTextField extends StatelessWidget {
   ForgotPasswordTextField({
    super.key,
  });

   final ForgotPasswordController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller.emailController ,
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
