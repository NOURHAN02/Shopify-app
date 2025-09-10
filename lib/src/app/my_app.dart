import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/features/drawer/data/repo/drawer_repo.dart';
import 'package:shopify_app/src/features/drawer/presentation/manager/bloc.dart';
import 'package:shopify_app/src/features/drawer/presentation/view/main_screen.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => DraweBloc(DrawerRepo())..fetchDrawerList()),
        BlocProvider(create: (_) => ProductBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsApp.kBackgroundColor,
          appBarTheme: const AppBarTheme(
            color: ColorsApp.kSecondColor,
            iconTheme: IconThemeData(color: ColorsApp.iconThemeColor),
          ),
        ),
        home: const MainScreen(),
      ),
    );
  }
}
