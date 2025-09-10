import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class CustomDrawerItemActive extends StatelessWidget {
  const CustomDrawerItemActive({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: ColorsApp.iconThemeColor),
        title: Text(title, style: StylesApp.drawerStyle),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
