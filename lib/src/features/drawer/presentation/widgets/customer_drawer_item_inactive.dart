import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/utils/styles.dart';
import 'package:shopify_app/src/features/drawer/presentation/manager/bloc.dart';

class CustomDrawerItemInActive extends StatelessWidget {
  const CustomDrawerItemInActive({
    super.key,
    required this.icon,
    required this.title,
    required this.item,
  });
  final IconData icon;
  final String title;
  final int item;
  @override
  Widget build(BuildContext context) {
    final drawerBloc = context.read<DraweBloc>();

    return ListTile(
      leading: Icon(icon, color: ColorsApp.iconThemeColor),
      title: Text(title, style: StylesApp.drawerStyle),
      onTap: () {
        if (drawerBloc.currentPage != item) {
          drawerBloc.changePageDrawer(item);
        }
        Navigator.pop(context);
      },
    );
  }
}
