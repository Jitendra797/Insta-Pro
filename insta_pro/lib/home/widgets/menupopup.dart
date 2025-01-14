import 'package:flutter/material.dart';
import 'package:insta_pro/utils/constants/sizes.dart';

class MenuPopup<T> extends StatelessWidget {
  final Widget icon;
  final List<PopupMenuEntry<T>> items;
  final Function(T?)? onSelected;

  const MenuPopup({
    super.key,
    required this.icon,
    required this.items,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      icon: icon,
      splashRadius: KSizes.borderRadiusSm,
      itemBuilder: (BuildContext context) => items,
      onSelected: onSelected,
    );
  }
}
