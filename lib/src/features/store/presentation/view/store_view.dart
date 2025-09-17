import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/empty.json'),
          const Text("Store", style: StylesApp.titleStyle),
        ],
      ),
    );
  }
}
