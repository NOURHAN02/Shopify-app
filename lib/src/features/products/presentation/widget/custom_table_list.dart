import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_states.dart';
import 'package:shopify_app/src/features/products/presentation/widget/add_photo_widget.dart';
import 'package:shopify_app/src/features/products/presentation/widget/customer_list_date.dart';
import 'package:shopify_app/src/features/products/presentation/widget/customer_list_single.dart';
import 'package:shopify_app/src/features/products/presentation/widget/info_variant.dart';

class CustomTableListItem extends StatelessWidget {
  const CustomTableListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();

    return BlocBuilder<ProductBloc, ProductStates>(
      builder: (BuildContext context, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productBloc.groupedList.length,
          itemBuilder: (context, index) {
            return CustomerVariantItemTable(index: index);
          },
        );
      },
    );
  }
}

class CustomerVariantItemTable extends StatelessWidget {
  const CustomerVariantItemTable({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();
    final optionList = productBloc.groupedList[index];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          productBloc.optionsList.length > 1
              ? Column(
                children: [
                  Row(
                    children: [
                       AddPhotoWidget(option: optionList,),
                      const SizedBox(width: 8.0),
                      InfoVariantTableItem(groupList: optionList),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: optionList['items'].length,
                      itemBuilder: (context, idx) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: CustomerListData(
                            index: idx,
                            option: optionList['items'][idx],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
              : CustomerListDataSingle(index: index, option: optionList),
        ],
      ),
    );
  }
}
