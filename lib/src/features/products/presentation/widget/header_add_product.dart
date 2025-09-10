import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class HeaderAddProduct extends StatelessWidget {
  const HeaderAddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 5,
      children: [
        Icon(Icons.local_offer_outlined, size: 26),
        Icon(Icons.arrow_forward_ios, size: 15, color: Colors.black38),
        Text("Add Product", style: StylesApp.headerStyle),
      ],
    );
  }
}
