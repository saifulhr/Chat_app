import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_app/routes/app_routes.dart';
import 'package:chat_app/services/auth_services.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final AuthServices _authServices = AuthServices();

  @override
  void initState() {
    super.initState();
    _handleNavigation();
  }

  void _handleNavigation() async {
    await Future.delayed(const Duration(seconds: 1));

    final user = _authServices.getCurrentUser();

    if (user != null && user.emailVerified) {
      final isRegistered = await _authServices.isUserRegisteredInFirestore();

      if (isRegistered) {
        Get.offAllNamed(AppRoutes.bottomnavbar);
      } else {
        await _authServices.signOut();
        Get.offAllNamed(AppRoutes.onboarding);
      }
    } else {
      Get.offAllNamed(AppRoutes.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        strokeWidth: 3,
        strokeAlign: ambiguate(-6),
      )),
    );
  }
}
