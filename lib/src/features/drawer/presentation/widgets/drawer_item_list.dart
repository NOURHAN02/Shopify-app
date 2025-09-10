import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/features/drawer/presentation/manager/bloc.dart';
import 'package:shopify_app/src/features/drawer/presentation/widgets/custom_drawer_item.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerBloc = context.read<DraweBloc>();

    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: [
        CustomDrawerItem(
          icon: Icons.home_outlined,
          title: "Home",
          isActive: drawerBloc.currentPage == 0,
          item: 0,
        ),
        CustomDrawerItem(
          icon: Icons.store_sharp,
          title: "Store",
          isActive: drawerBloc.currentPage == 1,
          item: 1,
        ),
        CustomDrawerItem(
          icon: Icons.local_offer,
          title: "Products",
          isActive: drawerBloc.currentPage == 2,
          item: 2,
        ),
      ],
    );
  }
}
