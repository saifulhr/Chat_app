import 'dart:math' as math;
import 'package:chat_app/utils/all_colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              AllColors.onBordingSecondaryColor,
              AllColors.onBordingPrimaryColor,
              Colors.black,
            ],
          ),
        ),
        child: Stack(
          children: [
           
            Positioned(
              top: 200,
              left: -180,
              child: Transform.rotate(
                angle: -35 * math.pi / 200,
                child: Transform.scale(
                  scaleX: 2.0,
                  scaleY: 0.9,
                  child: Opacity(
                    opacity: 0.85,
                    child: Container(
                      width: 700,
                      height: 320,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const RadialGradient(
                          center: Alignment.center,
                          radius: 0.4,
                          colors: [
                            AllColors.onBordingPrimaryColor,
                            Colors.transparent,
                          ],
                          stops: [0.0, 1.0],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AllColors.onBordingPrimaryColor.withOpacity(0.6),
                            blurRadius: 150,
                            spreadRadius: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // 🔹 Rest of UI (example placeholder, আপনি এখানে আপনার content রাখবেন)
          const Center(
            child: Text(
              "Connect friends easily & quickly",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
