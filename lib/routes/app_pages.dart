import 'package:chat_app/routes/app_routes.dart';
import 'package:chat_app/view/authentication/forgot_screen/forgot_pass_screen.dart';
import 'package:chat_app/view/authentication/log_in_screen/log_in_screen.dart';
import 'package:chat_app/view/authentication/otp_screen/email_verification_screen.dart';
import 'package:chat_app/view/authentication/signup_screen/signup_screen.dart';
import 'package:chat_app/view/message/message_screen.dart';
import 'package:chat_app/view/message_details/message_details_screen.dart';
import 'package:chat_app/view/onboarding_screen/onboarding_screen.dart';
import 'package:chat_app/view/root_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => SignupScreen(),
    ),
    GetPage(
      name: AppRoutes.verify,
      page: () => EmailVerificationScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LogInScreen(),
    ),
    GetPage(
      name: AppRoutes.forgot,
      page: () => ForgotPassScreen(),
    ),
    GetPage(name: AppRoutes.message, page: () => MessageScreen()),
    GetPage(name: AppRoutes.messagedetails, page: () => MessageDetailsScreen()),
    GetPage(name: AppRoutes.rootScreen, page: () => RootScreen()),
  ];
}
