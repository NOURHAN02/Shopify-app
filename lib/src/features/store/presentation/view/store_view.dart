import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Store", style: StylesApp.titleStyle)],
      ),
    );
  }
}
