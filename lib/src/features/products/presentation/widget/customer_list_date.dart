
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/widgets/customer_text_form_widget.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_states.dart';
import 'package:shopify_app/src/features/products/presentation/widget/add_photo_widget.dart';

class CustomerListData extends StatelessWidget {
  const CustomerListData({
    super.key,
    required this.index,
    required this.option,
  });
  final int index;
  final Map<String, dynamic> option;

  @override
  Widget build(BuildContext context) {
    final productBloc=context.read<ProductBloc>();
    return SingleChildScrollView(
      child: Row(
        children: [
           AddPhotoWidget(option: option,),
          const SizedBox(width: 20),
          Text("${option.values.toList()[0]}"),
          const SizedBox(width: 50),
          Expanded(
            flex: 2,
         child:    CustomerTextFormWidget(
              hintText: "0.0",
              text: "${option['price']}",
              onChanged: (val) {
                option['price'] = double.tryParse(val) ?? 0.0;
                productBloc.emit(AddOptionState());
              },
            ),
            ),
        ],
      ),
    );
  }
}
