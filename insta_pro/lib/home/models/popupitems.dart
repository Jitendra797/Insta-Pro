import 'package:flutter/material.dart';

List<PopupMenuEntry<String>> menuItems = [
  const PopupMenuItem(
    value: 'Profile',
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Icon(Icons.person), Text('Profile')],
    ),
  ),
  const PopupMenuDivider(),
  const PopupMenuItem(
    value: 'Logout',
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.logout),
        Text(
          'Logout',
        )
      ],
    ),
  ),
];
