import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/styles.dart';
import 'package:shopify_app/src/features/products/data/models/option_model.dart';
import 'package:shopify_app/src/features/products/presentation/widget/custom_option_value.dart';

class SaveOptionWidget extends StatelessWidget {
  const SaveOptionWidget({
    super.key,
    required this.optionModel, 
  });
  final OptionModel optionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 7,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(optionModel.optionName, style: StylesApp.inputStyle),
        Row(
          children: [
            ...List.generate(optionModel.optionValue.length, (index) {
              return CustomOptionValueWidget(optionValue: optionModel.optionValue[index]);
            }),
          ],
        ),
      ],
    );
  }
}
