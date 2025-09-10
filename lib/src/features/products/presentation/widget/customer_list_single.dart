import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/widgets/customer_text_form_widget.dart';
import 'package:shopify_app/src/features/products/presentation/widget/add_photo_widget.dart';

class CustomerListDataSingle extends StatelessWidget {
  const CustomerListDataSingle({
    super.key,
    required this.index,
    required this.option,
  });
  final int index;
  final Map<String, dynamic> option;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         AddPhotoWidget(option: option,),
        const SizedBox(width: 6),
        Text("${option.values.toList()[0]}"),
        const SizedBox(width: 6),

        Expanded(
          child: CustomerTextFormWidget(
            hintText: "0.0",
            text: "${option['price']}",
          ),
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
