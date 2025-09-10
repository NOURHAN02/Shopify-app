import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';

class DrawerIconWidget extends StatelessWidget {
  const DrawerIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
          icon: const Icon(Icons.menu, color: ColorsApp.kDrowerColor, size: 27),

          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    );
  }
}
