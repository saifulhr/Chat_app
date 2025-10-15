import 'package:chat_app/services/auth_services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../routes/app_routes.dart';

class EmailVerificationController extends GetxController {
  final AuthServices _authService = AuthServices();
  final isVerifying = false.obs;
  Future<void> goToEmailApp() async {
    final Uri gmailUri = Uri.parse('googlegmail://mail/u/0/');
    final Uri gmailWebUri = Uri.parse('https://mail.google.com');
    final Uri emailUri = Uri(scheme: 'mailto', path: '');

    try {
      if (await canLaunchUrl(gmailUri)) {
        await launchUrl(gmailUri, mode: LaunchMode.externalApplication);
      } else if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri, mode: LaunchMode.externalApplication);
      } else if (await canLaunchUrl(gmailWebUri)) {
        await launchUrl(gmailWebUri, mode: LaunchMode.externalApplication);
      } else {
        Get.snackbar("Error", "Could not open any email app or Gmail");
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to open email app: $e");
    }
  }
  Future<bool> checkEmailVerified() async {
    try {
      bool isVerified = await _authService.isEmailVerified();
      return isVerified;
    } catch (e) {
      Get.snackbar("Error", "Could not verify email: $e");
      return false;
    }
  }
  Future<void> checkVerifiedAndNavigate() async {
    isVerifying.value = true;
    bool isVerified = await checkEmailVerified();
    isVerifying.value = false;

    if (isVerified) {
      Get.offAllNamed(AppRoutes.message);
    } else {
      Get.snackbar("Not Verified", "Please verify your email first.");
    }
  }
  void startVerificationPolling({int intervalSeconds = 5}) {
    Future.doWhile(() async {
      await Future.delayed(Duration(seconds: intervalSeconds));
      bool isVerified = await checkEmailVerified();
      if (isVerified) {
        Get.offAllNamed(AppRoutes.message);
        return false;
      }
      return true;
    });
  }
}
