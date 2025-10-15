import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_arrow_icon.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_main_text.dart';
import 'package:chat_app/controller/signup_controller.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/signup_screen/widgets/sign_up_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: CustomArrowIcon(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomMainText(
              title: AllText.signupTileText1,
              subtitle: AllText.signupTileText2,
            ),
            const SizedBox(height: 60),
            SignUpTextfield(
              nameController: controller.nameController,
              emailController: controller.emailController,
              passwordController: controller.passwordController,
              confirmPasswordController: controller.confirmController,
            ),
            const SizedBox(height: 111),
            Obx(() => CustomElevatedButton(
                  text: controller.isLoading.value
                      ? "Loading..."
                      : AllText.createanaccount,
                  ontap: controller.isLoading.value
                      ? null
                      : controller.onSignupPressed,
                  backgroundColor: controller.isLoading.value
                      ? AllColors.btnDisableColor
                      : AllColors.btnEnableColor,
                  textColor: AllColors.primaryColor,
                )),
          ],
        ),
      ),
    );
  }
}