import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/styles.dart';
import 'package:shopify_app/src/core/widgets/customer_text_form_widget.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/widget/option_value_widget.dart';
import 'package:shopify_app/src/features/products/presentation/widget/save_option_widget.dart';
import 'package:shopify_app/src/features/products/presentation/widget/variant_button_widget.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();
    final optionSave = productBloc.optionsList[index].isSave;

    return optionSave
        ? SaveOptionWidget(optionModel: productBloc.optionsList[index])
        : Column(
          spacing: 10.0,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [Text("Option Name", style: StylesApp.titleStyle)],
            ),
            CustomerTextFormWidget(
              hintText: '',
              text: '',
              onChanged: (val) => productBloc.addnameToOption(index, val),
            ),
            const SizedBox(height: 3),
            const Text("Option Values", style: StylesApp.titleStyle),
            OptionValuesWidget(optionIndex: index),

            const SizedBox(height: 3),

            VariantsButtonWidget(index: index),
          ],
        );
  }
}
