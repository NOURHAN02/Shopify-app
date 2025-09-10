import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class CustomerButton extends StatelessWidget {
  const CustomerButton({
    super.key,
    this.onPressed,
    required this.text,
    this.color,
    required this.backgroundColor,
  });
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: StylesApp.titleStyle.copyWith(color: color)),
    );
  }
}
