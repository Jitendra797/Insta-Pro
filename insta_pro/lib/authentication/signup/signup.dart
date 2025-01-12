import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_pro/authentication/signup/widgets/signupform.dart';
import 'package:insta_pro/common/widgets/socialbuttons.dart';
import 'package:insta_pro/utils/constants/sizes.dart';
import 'package:insta_pro/utils/constants/text_strings.dart';
import 'package:insta_pro/common/widgets/formdivider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                KTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: KSizes.spaceBtwSections),

              // Form
              const SignUpForm(),
              const SizedBox(height: KSizes.spaceBtwSections),

              // Dividers
              FormDivider(dividerText: KTexts.orsignUpWith.capitalize!),
              const SizedBox(height: KSizes.spaceBtwSections),

              // Social Buttons
              const SocialButtons(),
              const SizedBox(height: KSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
