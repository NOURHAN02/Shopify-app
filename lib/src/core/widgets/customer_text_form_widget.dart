import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class CustomerTextFormWidget extends StatelessWidget {
  const CustomerTextFormWidget({
    super.key,
    required this.hintText,
    this.isMaxLine = false,
    this.controller,
    required this.text, this.onChanged,
  });
  final bool isMaxLine;
  final String hintText;
  final String text;
  final TextEditingController? controller;
final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: isMaxLine ? null : 1,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      validator: (value) {
        if (value == null && value!.isEmpty) {
          if (text.isNotEmpty) {
            return "$text can’t be blank";
          }
          return "This Filed can’t be blank";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        hintText: hintText,
        hintStyle: StylesApp.inputStyle,
        enabledBorder: outlinerBorder(),
        focusedBorder: outlinerBorder(),
        errorBorder: outlinerBorder(color: Colors.red),
        focusedErrorBorder: outlinerBorder(),
        border: outlinerBorder(),
      ),
    );
  }

  OutlineInputBorder outlinerBorder({Color? color}) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.0),
    borderSide: BorderSide(color: color ?? ColorsApp.kSecondColor),
  );
}
