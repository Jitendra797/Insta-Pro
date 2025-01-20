import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_pro/collection/collection.dart';
import 'package:insta_pro/deletedblogs/deletedblogs.dart';
import 'package:insta_pro/home/home.dart';
import 'package:insta_pro/profile/profile.dart';
import 'package:insta_pro/utils/constants/colors.dart';
import 'package:insta_pro/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? KColors.black : KColors.white,
          indicatorColor: darkMode
              ? KColors.white.withOpacity(0.1)
              : KColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.folder),
              label: 'Collection',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.trash),
              label: 'Deleted Blogs',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePage(),
    const Collection(),
    const Deletedblogs(),
    const ProfileScreen()
  ];
}
