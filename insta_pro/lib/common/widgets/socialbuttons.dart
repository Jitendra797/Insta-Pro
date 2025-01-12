import 'package:flutter/material.dart';
import 'package:insta_pro/utils/constants/colors.dart';
import 'package:insta_pro/utils/constants/image_strings.dart';
import 'package:insta_pro/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: KColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(KImages.googleLogo),
              width: KSizes.iconMd,
              height: KSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: KSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: KColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(KImages.facebookLogo),
              width: KSizes.iconMd,
              height: KSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
