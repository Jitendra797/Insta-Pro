import 'package:flutter/material.dart';
import 'package:insta_pro/utils/theme/custom_themes/text_theme.dart';

List<PopupMenuEntry<String>> menuItems = [
  PopupMenuItem(
    value: 'Profile',
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.person),
        Text(
          'Profile',
          style: KTextTheme.darkTextTheme.labelLarge,
        )
      ],
    ),
  ),
  const PopupMenuDivider(),
  PopupMenuItem(
    value: 'Logout',
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.logout),
        Text(
          'Logout',
          style: KTextTheme.darkTextTheme.labelLarge,
        )
      ],
    ),
  ),
];
