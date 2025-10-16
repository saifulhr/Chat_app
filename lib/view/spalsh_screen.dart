// import 'package:chat_app/helpers/device_helpers.dart';
// import 'package:chat_app/routes/app_routes.dart';
// import 'package:chat_app/services/auth_services.dart';
// import 'package:chat_app/utils/all_colors.dart';
// import 'package:chat_app/utils/all_images.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   final AuthServices _authServices = AuthServices();

//   @override
//   void initState() {
//     super.initState();
//     _navigateToNext();
//   }

//   void _navigateToNext() async {
//     await Future.delayed(const Duration(seconds: 5));

//     final user = _authServices.getCurrentUser();
//     if (user != null) {
//       bool isVerified = await _authServices.isEmailVerified();
//       if (isVerified) {
//         Get.offAllNamed(AppRoutes.message);
//       } else {
//         Get.snackbar("Email Not Verified", "Please verify your email first.");
//         await _authServices.signOut();
//         Get.offAllNamed(AppRoutes.onboarding);
//       }
//     } else {
//       Get.offAllNamed(AppRoutes.onboarding);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AllColors.primaryColor,
//       body: Center(
//         child: Image.asset(
//           AllImages.splashScreen,
//           height: DeviceHelpers.getScreenHeight(context),
//           width: DeviceHelpers.getScreenWidth(context) * .4,
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
// }
