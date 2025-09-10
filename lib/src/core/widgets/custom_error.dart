import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errorText});
  final String errorText;
  @override
  Widget build(BuildContext context) {
    return Text(errorText);
  }
}
