import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_pro/authentication/login/login.dart';
import 'package:insta_pro/blogcard/blogcard.dart';
import 'package:insta_pro/common/containers/search_container.dart';
import 'package:insta_pro/common/widgets/appbar/appbar.dart';
import 'package:insta_pro/home/controllers/menucontroller.dart';
import 'package:insta_pro/home/models/popupitems.dart';
import 'package:insta_pro/home/widgets/menupopup.dart';
import 'package:insta_pro/profile/profile.dart';
import 'package:insta_pro/utils/constants/sizes.dart';
import 'package:insta_pro/utils/constants/text_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = MenuControlle(
      onProfilePressed: () {
        Get.to(() => const ProfileScreen());
      },
      onLogoutPressed: () {
        Get.to(() => const LoginScreen());
      },
    );
    return Scaffold(
      appBar: KAppBar(
          title: Text(
            KTexts.appName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            MenuPopup(
              icon: const Icon(Icons.menu),
              onSelected: menuController.handleMenuSelection,
              items: menuItems,
            ),
          ]),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: KSizes.spaceBtwItems),
            SearchContainer(
              text: 'Search in Store',
              icon: Iconsax.search_normal,
            ),
            BlogCard(),
            BlogCard(),
            BlogCard(),
            BlogCard(),
            BlogCard(),
            BlogCard()
          ],
        ),
      ),
    );
  }
}
