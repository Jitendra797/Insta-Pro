import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_pro/utils/constants/image_strings.dart';
import 'package:insta_pro/utils/constants/sizes.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String description;
  final String authorName;
  final int likesCount;
  final int commentsCount;
  final List<String> tags;
  final String profileImageUrl;
  final String updatedTime;

  const BlogCard({
    super.key,
    this.title = 'Python Programming',
    this.description = 'This is my first blog about python programming.',
    this.authorName = 'kittu7',
    this.likesCount = 0,
    this.commentsCount = 0,
    this.tags = const ['student'],
    this.profileImageUrl = 'http://',
    this.updatedTime = '2015-12-12',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(KImages.user),
                  radius: KSizes.iconSm,
                ),
                const SizedBox(width: KSizes.spaceBtwItems / 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: KSizes.fontSizeSm,
                      ),
                    ),
                    Text(
                      updatedTime,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: KSizes.spaceBtwSections),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Iconsax.heart,
                    ),
                    const SizedBox(width: KSizes.xs),
                    Text('$likesCount'),
                  ],
                ),
                const SizedBox(width: KSizes.md),
                Row(
                  children: [
                    const Icon(Iconsax.message),
                    const SizedBox(width: KSizes.xs),
                    Text('$commentsCount'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
