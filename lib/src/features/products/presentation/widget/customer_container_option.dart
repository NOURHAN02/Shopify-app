import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/utils/styles.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';

class CustomerContainerOptionWidget extends StatelessWidget {
  const CustomerContainerOptionWidget({
    super.key,
    required this.child,
    this.paddingNum,
  });
  final Widget child;
  final double? paddingNum;
  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();

    return Container(
      padding: EdgeInsets.all(paddingNum ?? 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.white12, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          child,
          if (productBloc.optionsList.length < 3)
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
                  Text("Add Another option", style: StylesApp.inputStyle),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
