import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_arrow_icon.dart';
import 'package:chat_app/controller/forgot_password_controller.dart';
import 'package:chat_app/helpers/device_helpers.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/forgot_screen/widget/forgot_password_text.dart';
import 'package:chat_app/view/authentication/forgot_screen/widget/forgot_password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassScreen extends StatelessWidget {
 ForgotPassScreen({super.key});
 final ForgotPasswordController controller = Get.put(ForgotPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomArrowIcon(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Forgot Password Verification Screen
            Image.asset(
              AllImages.forgotPassword,
              width: DeviceHelpers.getScreenWidth(context),
              height: DeviceHelpers.getScreenHeight(context) * .27,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //Forgot password Text page
            ForgotPasswordText(),
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
            //Forgot Password Text Field
            ForgotPasswordTextField(),
            //Button
            SizedBox(
              height: AllSizes.spaceBtwSections,
            ),
             Obx(() => CustomElevatedButton(
              text: controller.isLoading.value ? "Please wait..." : AllText.resetPass,
              ontap: controller.isLoading.value ? null : controller.resetPassword,
              backgroundColor: AllColors.btnEnableColor,
              textColor: AllColors.primaryColor,
            )),
          ],
        ),
      ),
    );
  }
}
