import 'package:chat_app/routes/app_routes.dart';
import 'package:chat_app/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final isLoading = false.obs;

  final AuthServices _authService = AuthServices();

  void onLoginPressed() async {
    isLoading.value = true;

    String? error = await _authService.signIn(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

    isLoading.value = false;

    if (error != null) {
      Get.snackbar("Login Failed", error);
    } else {
      Get.offAllNamed(AppRoutes.message);
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
