import 'package:chat_app/routes/app_routes.dart';
import 'package:chat_app/services/auth_services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final isLoading = false.obs;
  final AuthServices _authServices = AuthServices();

  void onSignupPressed() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirm = confirmController.text.trim();

    if (name.isEmpty || email.isEmpty || password.isEmpty || confirm.isEmpty) {
      Get.snackbar("Error", "All fileds are required");
      return;
    }

    if (password != confirm) {
      Get.snackbar("Error", "Passwords do not match");
      return;
    }

    isLoading.value = true;

    String? error = await _authServices.signup(
        name: name, email: email, password: password, confirmPassword: confirm);
    isLoading.value = false;

    if (error != null) {
      Get.snackbar("Sign Up Field", "Error");
    } else {
      Get.offAllNamed(AppRoutes.verify);
    }

    @override
    // ignore: unused_element
    void onClose() {
      nameController.dispose();
      emailController.dispose();
      passwordController.dispose();
      confirmController.dispose();
      super.onClose();
    }
  }
}
