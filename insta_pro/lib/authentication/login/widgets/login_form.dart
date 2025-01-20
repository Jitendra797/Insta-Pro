import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_pro/navigation_menu.dart';
import 'package:insta_pro/utils/constants/sizes.dart';
import 'package:insta_pro/utils/constants/text_strings.dart';
import 'package:insta_pro/authentication/signup/signup.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: KTexts.email),
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: KTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(KTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => {},
                  child: const Text(KTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(
              height: KSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(KTexts.signIn),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(KTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
