import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key, this.onChanged, required this.isValue});
  final void Function(bool?)? onChanged;
  final bool isValue;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor:Colors.black ,
      side: WidgetStateBorderSide.resolveWith(
        (states) => const BorderSide(color: ColorsApp.kSecondColor, width: 1.5),
      ),
      value: isValue,
      onChanged: onChanged,
    );
  }
}
