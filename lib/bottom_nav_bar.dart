import 'package:chat_app/utils/all_colors.dart';
import 'package:chat_app/utils/all_images.dart';
import 'package:chat_app/utils/all_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: AllColors.primaryColor,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AllColors.bottomNavBarEnabledColor,
          unselectedItemColor: AllColors.bottomNavBarDisabledColor,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Caros'),
          unselectedLabelStyle: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Caros'),
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    AllImages.messageIcon,
                    height: 22,
                    color: controller.selectedIndex.value == 0
                        ? AllColors.bottomNavBarEnabledColor
                        : AllColors.bottomNavBarDisabledColor,
                  ),
                  const SizedBox(height: 6)
                ],
              ),
              label: AllText.messageText,
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    AllImages.callIcon,
                    height: 26,
                    color: controller.selectedIndex.value == 1
                        ? AllColors.bottomNavBarEnabledColor
                        : AllColors.bottomNavBarDisabledColor,
                  ),
                  const SizedBox(height: 6)
                ],
              ),
              label: AllText.callText,
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    AllImages.contactIcon,
                    height: 26,
                    color: controller.selectedIndex.value == 2
                        ? AllColors.bottomNavBarEnabledColor
                        : AllColors.bottomNavBarDisabledColor,
                  ),
                  const SizedBox(height: 6)
                ],
              ),
              label: AllText.contactText,
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    AllImages.settingIcon,
                    height: 28,
                    color: controller.selectedIndex.value == 3
                        ? AllColors.bottomNavBarEnabledColor
                        : AllColors.bottomNavBarDisabledColor,
                  ),
                  const SizedBox(height: 6)
                ],
              ),
              label: AllText.settingText,
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  RxInt selectedIndex = 0.obs;

  List<Widget> screens = [
    Container(),
    Container(color: Colors.green),
    Container(color: Colors.black),
    Container(color: Colors.yellow),
  ];
}
