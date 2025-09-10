import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/widgets/customer_text_form_widget.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_states.dart';

class OptionValuesWidget extends StatelessWidget {
  final int optionIndex;
  const OptionValuesWidget({super.key, required this.optionIndex});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductBloc>();
    final option = bloc.optionsList[optionIndex];

    if (option.optionValue.isEmpty) option.optionValue.add('');

    return Column(
      children: option.optionValue.asMap().entries.map((entry) {
        final i = entry.key;
        final value = entry.value;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: CustomerTextFormWidget(
            hintText: '',
            text: value,
            onChanged: (val) {
              val = val.trim();

              if (val.isNotEmpty) {
                option.optionValue[i] = val;

                if (i == option.optionValue.length - 1 && option.optionValue.last != '') {
                  option.optionValue.add('');
                  bloc.emit(AddOptionState());
                }
              } else if (i != option.optionValue.length - 1) {
                option.optionValue.removeAt(i);
                bloc.emit(AddOptionState());
              }
            },
          ),
        );
      }).toList(),
    );
  }
}
