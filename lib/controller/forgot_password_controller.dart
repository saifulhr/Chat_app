import 'package:chat_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_app/services/auth_services.dart';

class ForgotPasswordController extends GetxController {
  final emailController = TextEditingController();
  final isLoading = false.obs;

  void resetPassword() async {
    isLoading.value = true;
    String email = emailController.text.trim();
    String? result = await AuthServices().resetPassword(email);
    isLoading.value = false;

    if (result != null) {
      Get.snackbar("Error", result);
    } else {
      Get.snackbar("Success", "If an account exists with this email, a password reset link has been sent");

      Future.delayed(const Duration(seconds: 5), () {
         Get.delete<ForgotPasswordController>();
        Get.offAllNamed(AppRoutes.login);
      });
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
