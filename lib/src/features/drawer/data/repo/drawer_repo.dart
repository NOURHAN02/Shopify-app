import 'package:flutter/widgets.dart';
import 'package:shopify_app/src/features/home/presentation/view/home_view.dart';
import 'package:shopify_app/src/features/products/presentation/view/products_view.dart';
import 'package:shopify_app/src/features/store/presentation/view/store_view.dart';

class DrawerRepo {
  List<Widget> getListItemDrawer() => const [
    HomeView(),
    StoreView(),
    ProductsView(),
  ];
}
