import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/enums.dart';
import 'package:shopify_app/src/core/utils/styles.dart';
import 'package:shopify_app/src/core/widgets/customer_text_form_widget.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/widget/customer_container.dart';

class InfoAddProduct extends StatelessWidget {
  const InfoAddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductBloc>();

    return CustomerContainerWidget(
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(children: [Text("Title", style: StylesApp.titleStyle)]),

          CustomerTextFormWidget(
            hintText: 'Short sleeve t-shirt',
            text: 'Title',
            onChanged:
                (value) => cubit.setField(InfoProductEnum.title.name, value),
          ),
          const SizedBox(height: 3),

          const Text("Description", style: StylesApp.titleStyle),

          CustomerTextFormWidget(
            hintText: '',
            text: 'Description',
            isMaxLine: true,
            onChanged:
                (value) =>
                    cubit.setField(InfoProductEnum.description.name, value),
          ),
          const SizedBox(height: 3),

          const Text("Category", style: StylesApp.titleStyle),

          CustomerTextFormWidget(
            hintText: 'Choose a Product Category',
            text: 'Category',
            onChanged:
                (value) => cubit.setField(InfoProductEnum.category.name, value),
          ),
        ],
      ),
    );
  }
}
