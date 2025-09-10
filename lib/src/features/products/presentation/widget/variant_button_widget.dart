import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/widgets/customer_button.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';

class VariantsButtonWidget extends StatelessWidget {
  const VariantsButtonWidget({super.key, required this.index,});
 final int index;

  @override
  Widget build(BuildContext context) {
    final productBloc=context.read<ProductBloc>();
                    

    return Row(
      children: [
        CustomerButton(
          onPressed: () {
            productBloc.removeOption(index);
          },
          text: "Delete",
          backgroundColor: Colors.white,
          color: Colors.red,
        ),
        const Spacer(),
        CustomerButton(
          onPressed: () {
              

            context.read<ProductBloc>().saveOption(index);
          },
          text: "Done",
          backgroundColor: ColorsApp.kSecondColor,
          color: Colors.white,
        ),
      ],
    );
  }
}
