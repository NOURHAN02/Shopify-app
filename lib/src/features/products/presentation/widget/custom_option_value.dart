import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';

class CustomOptionValueWidget extends StatelessWidget {
  const CustomOptionValueWidget({super.key, required this.optionValue});

  final String optionValue;

  @override
  Widget build(BuildContext context) {
    if (optionValue.trim().isEmpty) return SizedBox();

    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ColorsApp.iconThemeColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(optionValue),
    );
  }
}
