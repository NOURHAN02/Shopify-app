import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_states.dart';
import 'package:shopify_app/src/features/products/presentation/widget/customer_container_option.dart';
import 'package:shopify_app/src/features/products/presentation/widget/option_widget.dart';
class ListOptionWidget extends StatelessWidget {
  const ListOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductStates>(
      builder: (context, state) {
        final productBloc = context.read<ProductBloc>();

        return CustomerContainerOptionWidget(
          paddingNum: 10.0,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: productBloc.optionsList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  OptionWidget(index: index, ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Divider(),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
