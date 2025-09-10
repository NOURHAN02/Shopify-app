import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/utils/styles.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_states.dart';
import 'package:shopify_app/src/features/products/presentation/widget/customer_container.dart';
import 'package:shopify_app/src/features/products/presentation/widget/list_option_widget.dart';

class VariantsWidget extends StatelessWidget {
  const VariantsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomerContainerWidget(
      child: BlocBuilder<ProductBloc, ProductStates>(
        builder: (BuildContext context, state) {
          final productBloc = context.read<ProductBloc>();

          return Column(
            spacing: 10.0,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Variants", style: StylesApp.titleStyle),
              if (productBloc.optionsList.isEmpty)
                GestureDetector(
                  onTap: () {
                    productBloc.addOption();
                  },
                  child: Row(
                    spacing: 5,
                    children: [
                      const Icon(
                        Icons.add_circle_outline_outlined,
                        color: ColorsApp.kSecondColor,
                        size: 22,
                      ),
                      Text(
                        "Add options like size or color",
                        style: StylesApp.inputStyle,
                      ),
                    ],
                  ),
                ),
              if (productBloc.optionsList.isNotEmpty)  ListOptionWidget(),
            ],
          );
        },
      ),
    );
  }
}
