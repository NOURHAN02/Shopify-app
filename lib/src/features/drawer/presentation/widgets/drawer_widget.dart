import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/features/drawer/presentation/widgets/drawer_item_list.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthDrawer = MediaQuery.of(context).size.width * 0.75;
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.only(top: kToolbarHeight),
          width: widthDrawer,
          decoration: const BoxDecoration(
            color: ColorsApp.kBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -3),
              ),
            ],
          ),
          child: const DrawerItemList(),
        ),
      ),
    );
  }
}
