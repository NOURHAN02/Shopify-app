import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [Text("Home", style: StylesApp.titleStyle)],
      ),
    );
  }
}
