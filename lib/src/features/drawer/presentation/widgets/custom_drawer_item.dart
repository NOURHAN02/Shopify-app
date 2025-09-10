import 'package:flutter/material.dart';
import 'package:shopify_app/src/features/drawer/presentation/widgets/customer_drawer_item_active.dart';
import 'package:shopify_app/src/features/drawer/presentation/widgets/customer_drawer_item_inactive.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.isActive,
    required this.item,
  });
  final IconData icon;
  final String title;
  final bool isActive;
  final int item;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CustomDrawerItemActive(icon: icon, title: title)
        : CustomDrawerItemInActive(icon: icon, title: title, item: item);
  }
}
