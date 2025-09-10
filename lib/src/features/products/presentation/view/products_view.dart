import 'package:flutter/material.dart';
import 'package:shopify_app/src/features/products/presentation/widget/custom_table_list.dart';
import 'package:shopify_app/src/features/products/presentation/widget/header_add_product.dart';
import 'package:shopify_app/src/features/products/presentation/widget/info_add_product.dart';
import 'package:shopify_app/src/features/products/presentation/widget/send_add_product_button.dart';
import 'package:shopify_app/src/features/products/presentation/widget/variants_widget.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                child: HeaderAddProduct(),
              ),
              const SizedBox(height: 20),
              const InfoAddProduct(),
              const SizedBox(height: 20),
              VariantsWidget(),
              const SizedBox(height: 20),
              CustomTableListItem(),
              const SendAddProductButton(),
            ],
          ),
        ),
      ),
    );
  }
}
