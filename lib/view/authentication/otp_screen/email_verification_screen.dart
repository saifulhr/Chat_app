import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/custom_head_text/custom_arrow_icon.dart';
import 'package:chat_app/controller/email_verification_controller.dart';
import 'package:chat_app/helpers/device_helpers.dart';
import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_sizes.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:chat_app/view/authentication/otp_screen/widgets/verification_screen_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmailVerificationScreenState createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final EmailVerificationController controller =
      Get.put(EmailVerificationController());

  @override
  void initState() {
    super.initState();
    controller.startVerificationPolling();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: CustomArrowIcon(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AllImages.emailVerificatin,
              width: DeviceHelpers.getScreenWidth(context),
              height: DeviceHelpers.getScreenHeight(context) * 0.3,
            ),
            const VerificationScreenText(),
            const SizedBox(height: AllSizes.spaceBtwSections),
            CustomElevatedButton(
              text: AllText.openEmailApp,
              ontap: controller.goToEmailApp,
              backgroundColor: AllColors.btnEnableColor,
              textColor: AllColors.primaryColor,
            ),
            const SizedBox(height: AllSizes.spaceBtwItems),
            Obx(() => CustomElevatedButton(
                  text: controller.isVerifying.value
                      ? AllText.verifying
                      : AllText.verifyandContinue,
                  ontap: controller.isVerifying.value
                      ? null
                      : controller.checkVerifiedAndNavigate,
                  backgroundColor: controller.isVerifying.value
                      ? AllColors.btnDisableColor
                      : AllColors.btnEnableColor,
                  textColor: AllColors.primaryColor,
                )),
            const SizedBox(height: 100),
            Center(
                child: Text(
              'Please Check Sapm Also',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AllColors.textPrimaryColor,
                  fontSize: 13,
                  fontFamily: "Caros",
                  fontWeight: FontWeight.bold),
            ))
          ],
        ),
      ),
    );
  }
}
