import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/widgets/customer_button.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';

class SendAddProductButton extends StatelessWidget {
  const SendAddProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    final product=context.read<ProductBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 16.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: CustomerButton(
          onPressed: () {
            product.sendData();
          },
          text: "Send",
          backgroundColor: ColorsApp.kSecondColor,
          color: Colors.white,
        ),
      ),
    );
  }
}
